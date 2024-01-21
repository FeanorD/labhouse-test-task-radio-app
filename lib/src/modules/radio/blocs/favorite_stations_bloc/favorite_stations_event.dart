part of 'favorite_stations_bloc.dart';

@freezed
class FavoriteStationsEvent with _$FavoriteStationsEvent {
  const FavoriteStationsEvent._();

  const factory FavoriteStationsEvent.loadAll() = _LoadAllFavoriteStationsEvent;
  const factory FavoriteStationsEvent.addStation(RadioStation station) = _AddStationToFavoritesEvent;
  const factory FavoriteStationsEvent.removeStation(String stationId) = _RemoveStationFromFavoritesEvent;
}

class _SetStationsListEvent extends FavoriteStationsEvent {
  const _SetStationsListEvent(this.stations) : super._();

  final List<RadioStation> stations;
}
