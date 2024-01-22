import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

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
  }

  final RadioPlayer _radioPlayer;

  late final StreamSubscription<bool> _loadingStatusSub;
  late final StreamSubscription<bool> _playingStatusSub;
  late final StreamSubscription<double> _volumeLevelSub;

  void setPlayingStatus(bool isPlaying) =>
      emit(state.copyWith(isPlaying: isPlaying));

  void setAudioLoadingStatus(bool isLoading) =>
      emit(state.copyWith(isAudioLoading: isLoading));

  void setVolumeLevel(double value) => emit(state.copyWith(volume: value));

  @override
  Future<void> close() {
    _loadingStatusSub.cancel();
    _playingStatusSub.cancel();
    _volumeLevelSub.cancel();
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
}
