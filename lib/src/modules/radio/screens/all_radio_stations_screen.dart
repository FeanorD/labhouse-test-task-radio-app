import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/error_view.dart';
import '../../../common_widgets/loader.dart';
import '../blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../blocs/radio_stations_bloc/radio_stations_bloc.dart';
import '../widgets/radio_stations_list_view.dart';

class AllRadioStationsScreen extends StatelessWidget {
  const AllRadioStationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final radioStationsState = context.watch<RadioStationsBloc>().state;

    return radioStationsState.when(
      loading: () => const Center(child: Loader()),
      error: (message) => Center(
        child: ErrorView(
          message: message,
          onTryAgain: () => context.read<RadioStationsBloc>()
              .add(const RadioStationsEvent.load()),
        ),
      ),
      loaded: (radioStations, _) => RadioStationsListView(
        radioStations: radioStations,
        // onRadioStationTap: _playRadioStation,
        onAddStationToFavoritesTap: (station) => context.read<FavoriteStationsBloc>()
            .add(FavoriteStationsEvent.addStation(station)),
      ),
    );
  }
}
