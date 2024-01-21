part of 'favorite_stations_bloc.dart';

@freezed
class FavoriteStationsState with _$FavoriteStationsState {
  const factory FavoriteStationsState.loaded({
    required List<RadioStation> stations,
  }) = _RadioStationsLoadedState;
  const factory FavoriteStationsState.loading() = _RadioStationsLoadingState;
  const factory FavoriteStationsState.error(String message) = _RadioStationsErrorState;
}
