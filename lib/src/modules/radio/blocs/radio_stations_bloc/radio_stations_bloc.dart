import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../models/radio_station_model.dart';
import '../../repositories/radio_repository.dart';

part 'radio_stations_event.dart';
part 'radio_stations_state.dart';
part 'radio_stations_bloc.freezed.dart';

@injectable
class RadioStationsBloc extends Bloc<RadioStationsEvent, RadioStationsState> {
  RadioStationsBloc(this._radioRepository) : super(const RadioStationsState.loading()) {
    on<_LoadStationsEvent>((event, emit) async {
      emit(const RadioStationsState.loading());

      try {
        final stations = await _radioRepository.getRadioStations();
        emit(RadioStationsState.loaded(
          stations: stations,
          hasReachedEnd: stations.length < _paginationStep,
        ));
      } catch (e) {
        emit(const RadioStationsState.error('Failed to load radio stations'));
      }
    });

    on<_LoadMoreStationsEvent>((event, emit) async {
      final currentState = state;

      if (currentState is _RadioStationsLoadedState && !currentState.hasReachedEnd) {
        try {
          final stations = await _radioRepository.getRadioStations(
            offset: currentState.stations.length,
            limit: _paginationStep,
          );

          emit(RadioStationsState.loaded(
            stations: currentState.stations + stations,
            hasReachedEnd: stations.length < _paginationStep,
          ));
        } catch (e) {
          Logger().e('Failed to load more radio stations', error: e);
        }
      }
    });
  }

  final RadioRepository _radioRepository;

  static const int _paginationStep = 20;
}
