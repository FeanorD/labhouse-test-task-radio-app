import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

import '../models/radio_station_model.dart';

@lazySingleton
abstract interface class RadioPlayer {
  Future<void> playNewStation(RadioStation radioStation);
  Future<void> stop();
  Future<void> pause();
  Future<void> resume();
  Future<void> setVolume(double volume);

  Stream<bool> get playingStream;
  Stream<double> get volumeStream;

  @factoryMethod
  factory RadioPlayer(AudioPlayer player) = _RadioPlayer;
}

class _RadioPlayer implements RadioPlayer {
  const _RadioPlayer(this._audioPlayer);

  final AudioPlayer _audioPlayer;

  @override
  Future<void> pause() {
    return _audioPlayer.pause();
  }

  @override
  Future<void> playNewStation(RadioStation radioStation) async {
    if (_audioPlayer.playing) {
      await pause();
    }
    await _audioPlayer.setAudioSource(
      AudioSource.uri(
        Uri.parse(radioStation.audioStreamUrl),
        tag: MediaItem(
          id: radioStation.id,
          title: radioStation.name,
          artUri: radioStation.hasIcon
              ? Uri.parse(radioStation.logoUrl)
              : null,
        ),
      ),
    );

    await _audioPlayer.play();
  }

  @override
  Future<void> resume() {
    return _audioPlayer.play();
  }

  @override
  Future<void> stop() {
    return _audioPlayer.stop();
  }

  @override
  Future<void> setVolume(double volume) {
    return _audioPlayer.setVolume(volume);
  }

  @override
  Stream<bool> get playingStream => _audioPlayer.playingStream;

  @override
  Stream<double> get volumeStream => _audioPlayer.volumeStream;

}