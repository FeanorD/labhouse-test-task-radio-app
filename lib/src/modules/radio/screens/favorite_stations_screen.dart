import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/error_view.dart';
import '../../../common_widgets/loader.dart';
import '../blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../blocs/radio_player_cubit/radio_player_cubit.dart';
import '../models/enums.dart';
import '../models/radio_station_model.dart';
import '../utils/favorite_station_handler_mixin.dart';
import '../widgets/radio_stations_list_view.dart';

class FavoriteStationsScreen extends StatelessWidget
    with FavoriteStationsHandlerMixin {
  const FavoriteStationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final radioStationsState = context.watch<FavoriteStationsBloc>().state;
    final selectedStation = context.select<RadioPlayerCubit, RadioStation?>(
        (cubit) => cubit.state.currentStation,
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
        onRadioStationTap: (station, index) => context.read<RadioPlayerCubit>()
            .playStation(
              radioStationIndex: index,
              playlistType: PlaylistType.favorite,
              playlist: radioStations,
            ),
        onAddStationToFavoritesTap: (station) =>
            removeFavoriteStation(context, station),
      ),
    );
  }
}
