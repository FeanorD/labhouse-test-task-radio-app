import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/error_view.dart';
import '../../../common_widgets/loader.dart';
import '../blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../blocs/selected_station_cubit/selected_station_cubit.dart';
import '../models/radio_station_model.dart';
import '../utils/favorite_station_handler_mixin.dart';
import '../widgets/radio_stations_list_view.dart';

class FavoriteStationsScreen extends StatelessWidget
    with FavoriteStationsHandlerMixin {
  const FavoriteStationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final radioStationsState = context.watch<FavoriteStationsBloc>().state;
    final selectedStation = context.select<SelectedStationCubit, RadioStation?>(
        (value) => value.state.station,
    );

    return radioStationsState.when(
      loading: () => const Center(child: Loader()),
      error: (message) => Center(
        child: ErrorView(
          message: message,
          onTryAgain: () => context.read<FavoriteStationsBloc>()
              .add(const FavoriteStationsEvent.loadAll())
        ),
      ),
      loaded: (radioStations) => RadioStationsListView(
        selectedRadioStation: selectedStation,
        radioStations: radioStations,
        onRadioStationTap: (station) =>
            context.read<SelectedStationCubit>().selectStation(station),
        onAddStationToFavoritesTap: (station) =>
            removeFavoriteStation(context, station),
      ),
    );
  }
}
