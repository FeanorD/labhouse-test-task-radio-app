part of 'radio_stations_bloc.dart';

@freezed
class RadioStationsState with _$RadioStationsState {
  const factory RadioStationsState.loaded({
    required List<RadioStation> stations,
    @Default(false) bool hasReachedEnd,
  }) = _RadioStationsLoadedState;
  const factory RadioStationsState.loading() = _RadioStationsLoadingState;
  const factory RadioStationsState.error(String message) = _RadioStationsErrorState;
}
