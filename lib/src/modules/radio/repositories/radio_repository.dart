import 'package:injectable/injectable.dart';

import '../data_sources/remote/radio_service.dart';
import '../models/radio_station_model.dart';

@lazySingleton
abstract interface class RadioRepository {
  Future<List<RadioStation>> getRadioStations({
   int limit = 20,
   int offset = 0,
   bool hideBroken = true, // Whether to include broken stations in the response list or not
  });

  @factoryMethod
  factory RadioRepository(RadioService radioService) = _RadioRepositoryImpl;
}

class _RadioRepositoryImpl implements RadioRepository {
  const _RadioRepositoryImpl(this._radioService);

  final RadioService _radioService;

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
}