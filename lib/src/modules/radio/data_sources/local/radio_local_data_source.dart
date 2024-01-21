import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/database/database.dart';
import '../../models/radio_station_model.dart';

part 'radio_local_data_source.g.dart';

@lazySingleton
abstract interface class RadioLocalDataSource {
  Future<void> saveStationToFavorites(RadioStation radioStation);
  Future<void> removeStationFromFavorites(String stationId);
  Future<List<RadioStation>> getFavoriteStations();

  Stream<List<RadioStation>> watchFavoriteStations();

  @factoryMethod
  factory RadioLocalDataSource(AppDatabase db) = _RadioLocalDataSourceImpl;
}

@DriftAccessor(tables: [RadioStationsTable])
class _RadioLocalDataSourceImpl extends DatabaseAccessor<AppDatabase>
    with _$_RadioLocalDataSourceImplMixin implements RadioLocalDataSource {
  _RadioLocalDataSourceImpl(AppDatabase db) : super(db);

  @override
  Future<void> saveStationToFavorites(RadioStation radioStation) async {
    await into(radioStationsTable).insert(radioStation.toEntity().toCompanion(true));
  }

  @override
  Future<void> removeStationFromFavorites(String stationId) async {
    await (delete(radioStationsTable)..where((tbl) => tbl.id.equals(stationId))).go();
  }

  @override
  Future<List<RadioStation>> getFavoriteStations() async {
    final data = await select(radioStationsTable).get();
    return data.map((entity) => RadioStation.fromEntity(entity)).toList();
  }

  @override
  Stream<List<RadioStation>> watchFavoriteStations() {
    return select(radioStationsTable).watch()
        .map((event) => event.map((entity) => RadioStation.fromEntity(entity))
        .toList());
  }

}