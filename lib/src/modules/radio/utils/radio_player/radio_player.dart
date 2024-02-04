import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

import '../../models/radio_station_model.dart';
import 'radio_player_controls_interface.dart';

@lazySingleton
abstract class RadioPlayer implements RadioPlayerControls {
  Stream<bool> get playingStream;
  Stream<double> get volumeStream;
  Stream<bool> get audioLoadingStream;

  Stream<List<IndexedAudioSource>?> get sequenceStream;
  Stream<int?> get currentIndexStream;

  Future<void> setPlaylist(List<RadioStation> stations, {
    int initialIndex = 0,
  });

  Future<void> addStationsToPlaylist(List<RadioStation> station);

  Future<void> seekToIndex(int index);

  // @PostConstruct(preResolve: true)
  Future<void> init();

  @disposeMethod
  void dispose();

  @factoryMethod
  factory RadioPlayer(AudioPlayer player) = _RadioPlayer;
}

class _RadioPlayer implements RadioPlayer {
  _RadioPlayer(this._audioPlayer);

  final AudioPlayer _audioPlayer;

  late ConcatenatingAudioSource _playlist;

  @override
  Future<void> init() async {
    _playlist = ConcatenatingAudioSource(children: []);
    await _audioPlayer.setAudioSource(_playlist);

    // final sub = _audioPlayer.processingStateStream.listen((state) {
    //   print('processingStateStream: $state');
    // });
    //
    // Future.delayed(Duration(seconds: 30)).then((value) => sub.cancel());
  }

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

  @override
  Stream<bool> get audioLoadingStream => _audioPlayer.processingStateStream
      .map((state) => state.isLoading);

  @override
  void dispose() {
    _audioPlayer.dispose();
  }

  @override
  Future<void> setPlaylist(List<RadioStation> stations, {
    int initialIndex = 0,
  }) async {
    _playlist = ConcatenatingAudioSource(
      children: stations.map((station) {
        return AudioSource.uri(
          Uri.parse(station.audioStreamUrl),
          tag: MediaItem(
            id: station.id,
            title: station.name,
            artUri: station.hasIcon ? Uri.parse(station.logoUrl) : null,
          ),
        );
      }).toList(),
    );

    await _audioPlayer.setAudioSource(
      _playlist,
      initialIndex: initialIndex,
    );

    // _audioPlayer.
  }

  @override
  Future<void> addStationsToPlaylist(List<RadioStation> station) async {
    if (_playlist.children.isEmpty) {
      await setPlaylist(station);
      return;
    }

    await _playlist.addAll(
      station.map((station) {
        return AudioSource.uri(
          Uri.parse(station.audioStreamUrl),
          tag: MediaItem(
            id: station.id,
            title: station.name,
            artUri: station.hasIcon ? Uri.parse(station.logoUrl) : null,
          ),
        );
      }).toList(),
    );
  }

  @override
  Stream<List<IndexedAudioSource>?> get sequenceStream => _audioPlayer.sequenceStream;

  @override
  Stream<int?> get currentIndexStream => _audioPlayer.currentIndexStream;

  @override
  Future<void> seekToIndex(int index) {
    return _audioPlayer.seek(Duration.zero, index: index);
  }

  @override
  Future<void> seekToNext() => _audioPlayer.seekToNext();

  @override
  Future<void> seekToPrevious() => _audioPlayer.seekToPrevious();

}

extension _ProcessingStateX on ProcessingState {
  bool get isLoading =>
      this == ProcessingState.loading || this == ProcessingState.buffering;
}