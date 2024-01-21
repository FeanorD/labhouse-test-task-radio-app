import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../models/radio_station_model.dart';
import '../../repositories/radio_repository.dart';

part 'favorite_stations_event.dart';
part 'favorite_stations_state.dart';
part 'favorite_stations_bloc.freezed.dart';

@injectable
class FavoriteStationsBloc extends Bloc<FavoriteStationsEvent, FavoriteStationsState> {
  FavoriteStationsBloc(this._radioRepository) : super(const FavoriteStationsState.loading()) {
    on<_LoadAllFavoriteStationsEvent>((event, emit) async {
      try {
        final stations = await _radioRepository.getFavoriteStations();
        emit(FavoriteStationsState.loaded(stations: stations));
      } catch (e) {
        emit(const FavoriteStationsState.error('Failed to favorite stations'));
      }
    });

    on<_AddStationToFavoritesEvent>((event, emit) async {
      try {
        await _radioRepository.saveStationToFavorites(event.station);
      } catch (e) {
        Logger().e('Failed to add a favorite station', error: e);
      }
    });

    on<_RemoveStationFromFavoritesEvent>((event, emit) async {
      try {
        await _radioRepository.removeStationFromFavorites(event.stationId);
      } catch (e) {
        Logger().e('Failed to remove a favorite station', error: e);
      }
    });

    on<_SetStationsListEvent>((event, emit) {
      emit(FavoriteStationsState.loaded(stations: event.stations));
    });

    _favoriteStationsSub = _radioRepository.watchFavoriteStations().listen((stations) {
      add(_SetStationsListEvent(stations));
    });
  }

  final RadioRepository _radioRepository;

  late final StreamSubscription<List<RadioStation>> _favoriteStationsSub;

  @override
  Future<void> close() {
    _favoriteStationsSub.cancel();
    return super.close();
  }
}
