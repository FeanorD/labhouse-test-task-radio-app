import '../../models/radio_station_model.dart';

abstract interface class RadioPlayerControls {
  /// Sets a new audio source from [radioStation] and starts playing the audio from it
  Future<void> playNewStation(RadioStation radioStation);

  Future<void> stop();
  Future<void> pause();

  /// Resumes the audio from the current audio source.
  Future<void> resume();

  Future<void> setVolume(double volume);
}