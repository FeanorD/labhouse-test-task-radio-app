part of 'radio_stations_bloc.dart';

@freezed
class RadioStationsState with _$RadioStationsState {
  const factory RadioStationsState.loaded({
    required List<RadioStation> allStations,
    List<RadioStation>? lastAddedStationsPortion,
    @Default(false) bool hasReachedEnd,
  }) = RadioStationsLoadedState;
  const factory RadioStationsState.loading() = RadioStationsLoadingState;
  const factory RadioStationsState.error(String message) = RadioStationsErrorState;
}
