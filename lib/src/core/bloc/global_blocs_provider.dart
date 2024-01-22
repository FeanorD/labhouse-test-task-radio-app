import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../modules/radio/blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../../modules/radio/blocs/radio_stations_bloc/radio_stations_bloc.dart';
import '../../modules/radio/blocs/selected_station_cubit/selected_station_cubit.dart';

class GlobalBlocsProvider extends StatelessWidget {
  const GlobalBlocsProvider({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavoriteStationsBloc>(
          create: (_) => getIt()..add(const FavoriteStationsEvent.loadAll()),
        ),
        BlocProvider<RadioStationsBloc>(
          create: (_) => getIt()..add(const RadioStationsEvent.load()),
        ),
        BlocProvider<SelectedStationCubit>(
          create: (_) => getIt(),
        ),
      ],
      child: child,
    );
  }
}
