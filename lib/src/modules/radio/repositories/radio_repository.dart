import 'package:injectable/injectable.dart';

import '../data_sources/local/radio_local_data_source.dart';
import '../data_sources/remote/radio_service.dart';
import '../models/radio_station_model.dart';

@lazySingleton
abstract interface class RadioRepository {
  Future<List<RadioStation>> getRadioStations({
   int limit = 20,
   int offset = 0,
   bool hideBroken = true, // Whether to include broken stations in the response list or not
  });

  Future<void> saveStationToFavorites(RadioStation radioStation);
  Future<void> removeStationFromFavorites(String stationId);
  Future<List<RadioStation>> getFavoriteStations();

  Stream<List<RadioStation>> watchFavoriteStations();

  @factoryMethod
  factory RadioRepository(
    RadioService radioService,
    RadioLocalDataSource radioLocalDataSource,
  ) = _RadioRepositoryImpl;
}

class _RadioRepositoryImpl implements RadioRepository {
  const _RadioRepositoryImpl(this._radioService, this._radioLocalDataSource);

  final RadioService _radioService;
  final RadioLocalDataSource _radioLocalDataSource;

  @override
  Future<List<RadioStation>> getRadioStations({
    int limit = 20,
    int offset = 0,
    bool hideBroken = true,
  }) => _radioService.getRadioStations(
    limit: limit,
    offset: offset,
    hideBroken: hideBroken,
  );

  @override
  Future<void> saveStationToFavorites(RadioStation radioStation) =>
      _radioLocalDataSource.saveStationToFavorites(radioStation);

  @override
  Future<List<RadioStation>> getFavoriteStations() =>
      _radioLocalDataSource.getFavoriteStations();

  @override
  Future<void> removeStationFromFavorites(String stationId) =>
      _radioLocalDataSource.removeStationFromFavorites(stationId);

  @override
  Stream<List<RadioStation>> watchFavoriteStations() =>
      _radioLocalDataSource.watchFavoriteStations();
}