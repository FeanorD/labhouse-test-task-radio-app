import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/enums.dart';
import 'radio_stations_bloc/radio_stations_bloc.dart';
import 'radio_player_cubit/radio_player_cubit.dart';

class RadioBlocsListener extends StatelessWidget {
  const RadioBlocsListener({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<RadioStationsBloc, RadioStationsState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (_, lastAddedStationsPortion, __) {
                final radioPlayerCubit = context.read<RadioPlayerCubit>();
                if (radioPlayerCubit.state.currentPlaylistType == PlaylistType.all) {
                  radioPlayerCubit.addStationsToPlaylist(lastAddedStationsPortion!);
                }
              },
              orElse: () => null,
            );
          },
          listenWhen: (previous, current) {
            if (previous is RadioStationsLoadedState && current is RadioStationsLoadedState) {
              return previous.lastAddedStationsPortion != current.lastAddedStationsPortion;
            }

            return false;
          },
        ),

      ],
      child: child,
    );
  }
}
