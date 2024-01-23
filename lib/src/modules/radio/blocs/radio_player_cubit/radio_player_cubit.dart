import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio_background/just_audio_background.dart';

import '../../models/enums.dart';
import '../../models/radio_station_model.dart';
import '../../utils/radio_player/radio_player.dart';
import '../../utils/radio_player/radio_player_controls_interface.dart';

part 'radio_player_state.dart';

@lazySingleton
class RadioPlayerCubit extends Cubit<RadioPlayerState> implements RadioPlayerControls {
  RadioPlayerCubit(this._radioPlayer) : super(RadioPlayerState.initial()) {
    _loadingStatusSub = _radioPlayer.audioLoadingStream.listen(setAudioLoadingStatus);
    _playingStatusSub = _radioPlayer.playingStream.listen(setPlayingStatus);
    _volumeLevelSub = _radioPlayer.volumeStream.listen(setVolumeLevel);
    _currentStationIdSub = _radioPlayer.currentIndexStream.listen(setCurrentStationIndex);

    _sequenceSub = _radioPlayer.sequenceStream.map((sequence) => sequence?.map((item) {
      // TODO: Quick implementation. There shouldn't be explicit mapping here,
      // TODO: better to move it to the RadioStation model or separate mapper
      final mediaItem = item.tag as MediaItem;
      return RadioStation(
        id: mediaItem.id,
        name: mediaItem.title,
        audioStreamUrl: '',
        logoUrl: mediaItem.artUri?.toString() ?? '',
      );
    }).toList()).listen(_setPlaylistToState);
  }

  final RadioPlayer _radioPlayer;

  late final StreamSubscription<bool> _loadingStatusSub;
  late final StreamSubscription<bool> _playingStatusSub;
  late final StreamSubscription<double> _volumeLevelSub;
  late final StreamSubscription<int?> _currentStationIdSub;
  late final StreamSubscription<List<RadioStation>?> _sequenceSub;

  Future<void> playStation({
    required int radioStationIndex,
    required PlaylistType playlistType,
    required List<RadioStation> playlist,
  }) async {
    if (playlistType != state.currentPlaylistType) {
      emit(state.copyWith(
        currentPlaylistType: playlistType,
        currentStationIndex: radioStationIndex,
      ));
      await _radioPlayer.setPlaylist(playlist, initialIndex: radioStationIndex);
      // await _radioPlayer.resume();
    } else {
      await _radioPlayer.seekToIndex(radioStationIndex);
      // await _radioPlayer.resume();
    }
    await _radioPlayer.resume();
  }

  void _setPlaylistToState(List<RadioStation>? playlist) {
    if (playlist != null) {
      emit(state.copyWith(currentPlaylist: playlist));
    }
  }

  void setPlayingStatus(bool isPlaying) =>
      emit(state.copyWith(isPlaying: isPlaying));

  void setAudioLoadingStatus(bool isLoading) =>
      emit(state.copyWith(isAudioLoading: isLoading));

  void setVolumeLevel(double value) => emit(state.copyWith(volume: value));

  void setCurrentStationIndex(int? index) =>
      emit(state.copyWith(currentStationIndex: index));

  void setPlaylistToAudioPlayer(List<RadioStation> stations) =>
      _radioPlayer.setPlaylist(stations);

  void addStationsToPlaylist(List<RadioStation> stations) {
    _radioPlayer.addStationsToPlaylist(stations);
  }

  @override
  Future<void> close() {
    _loadingStatusSub.cancel();
    _playingStatusSub.cancel();
    _volumeLevelSub.cancel();
    _currentStationIdSub.cancel();
    _sequenceSub.cancel();
    return super.close();
  }

  @override
  Future<void> pause() => _radioPlayer.pause();

  @override
  Future<void> playNewStation(RadioStation radioStation) =>
      _radioPlayer.playNewStation(radioStation);

  @override
  Future<void> resume() => _radioPlayer.resume();

  @override
  Future<void> setVolume(double volume) => _radioPlayer.setVolume(volume);

  @override
  Future<void> stop() => _radioPlayer.stop();

  @override
  Future<void> seekToNext() => _radioPlayer.seekToNext();

  @override
  Future<void> seekToPrevious() => _radioPlayer.seekToPrevious();

  Future<void> seekToIndex(int index) => _radioPlayer.seekToIndex(index);
}
