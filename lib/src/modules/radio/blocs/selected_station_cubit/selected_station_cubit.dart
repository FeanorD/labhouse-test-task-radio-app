import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../models/radio_station_model.dart';

part 'selected_station_state.dart';

@lazySingleton
class SelectedStationCubit extends Cubit<SelectedStationState> {
  SelectedStationCubit() : super(SelectedStationState.initial());

  void selectStation(RadioStation station) =>
      emit(state.copyWith(station: station));
}
