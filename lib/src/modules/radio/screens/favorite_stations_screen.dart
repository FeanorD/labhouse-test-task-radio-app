import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/error_view.dart';
import '../../../common_widgets/loader.dart';
import '../blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../widgets/radio_stations_list_view.dart';

class FavoriteStationsScreen extends StatelessWidget {
  const FavoriteStationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final radioStationsState = context.watch<FavoriteStationsBloc>().state;

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
        radioStations: radioStations,
        onAddStationToFavoritesTap: (station) => context.read<FavoriteStationsBloc>().add(
          FavoriteStationsEvent.removeStation(station.id)
        ),
        // onRadioStationTap: _playRadioStation,
      ),
    );
  }
}
