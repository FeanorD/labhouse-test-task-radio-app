import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/error_view.dart';
import '../../../common_widgets/loader.dart';
import '../blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../blocs/radio_stations_bloc/radio_stations_bloc.dart';
import '../blocs/selected_station_cubit/selected_station_cubit.dart';
import '../models/radio_station_model.dart';
import '../utils/favorite_station_handler_mixin.dart';
import '../widgets/radio_stations_list_view.dart';

class AllRadioStationsScreen extends StatelessWidget
    with FavoriteStationsHandlerMixin {
  const AllRadioStationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final radioStationsState = context.watch<RadioStationsBloc>().state;
    final favoriteStationsIds = context.select<FavoriteStationsBloc, List<String>>(
      (value) => value.state.maybeMap(
        loaded: (state) => state.stations.map((e) => e.id).toList(),
        orElse: () => [],
      )
    );
    final selectedStation = context.select<SelectedStationCubit, RadioStation?>(
      (value) => value.state.station,
    );

    return radioStationsState.when(
      loading: () => const Center(child: Loader()),
      error: (message) => Center(
        child: ErrorView(
          message: message,
          onTryAgain: () => context.read<RadioStationsBloc>()
              .add(const RadioStationsEvent.load()),
        ),
      ),
      loaded: (radioStations, _) {
        final composedRadioStations = radioStations.map(
          (station) => station.copyWith(
            isFavorite: favoriteStationsIds.contains(station.id),
          )
        ).toList();

        return RadioStationsListView(
          selectedRadioStation: selectedStation,
          radioStations: composedRadioStations,
          onRadioStationTap: (station) =>
              context.read<SelectedStationCubit>().selectStation(station),
          onAddStationToFavoritesTap: (station) =>
              toggleFavoriteStation(context, station),
          onLoadMore: () => context.read<RadioStationsBloc>()
              .add(const RadioStationsEvent.loadMore()),
        );
      },
    );
  }
}
