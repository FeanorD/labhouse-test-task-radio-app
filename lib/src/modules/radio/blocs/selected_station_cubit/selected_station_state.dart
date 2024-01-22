part of 'selected_station_cubit.dart';

class SelectedStationState {
  const SelectedStationState({
    this.station,
  });

  factory SelectedStationState.initial() => const SelectedStationState();

  final RadioStation? station;

  SelectedStationState copyWith({
    RadioStation? station,
  }) {
    return SelectedStationState(
      station: station ?? this.station,
    );
  }
}
