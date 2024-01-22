import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/di/injection.dart';
import '../blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../models/radio_station_model.dart';
import '../screens/radio_station_player_screen.dart';
import '../utils/favorite_station_handler_mixin.dart';
import '../utils/radio_player.dart';

class RadioControlsBottomSheet extends StatelessWidget with FavoriteStationsHandlerMixin {
  const RadioControlsBottomSheet({
    required this.radioStation,
    super.key,
  });

  final RadioStation radioStation;

  Future<void> _openRadioStationPlayer(BuildContext context) async {
    await Navigator.of(context).push(
      CupertinoPageRoute(
        fullscreenDialog: true,
        builder: (context) {
          return RadioStationPlayerScreen(
            radioStation: radioStation,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openRadioStationPlayer(context),
      child: Container(
        // decoration: BoxDecoration(
        //   border: Border(
        //     bottom: BorderSide(
        //       color: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
        //     ),
        //   ),
        // ),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StreamBuilder<bool>(
                  stream: getIt<RadioPlayer>().playingStream,
                  builder: (context, snapshot) {
                    final isPlaying = snapshot.data ?? false;
                    return IconButton(
                      icon: Icon(
                        isPlaying
                            ? Icons.pause_rounded
                            : Icons.play_arrow_rounded,
                        size: 40,
                      ),
                      onPressed: isPlaying
                          ? getIt<RadioPlayer>().pause
                          : getIt<RadioPlayer>().resume
                    );
                  }
                ),
                // RadioStationTextDescription(radioStation: radioStation),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                    child: Text(
                      radioStation.name.trim(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Builder(
                  builder: (context) {
                    final isFavorite = context.select<FavoriteStationsBloc, bool>(
                      (cubit) => cubit.state.maybeWhen(
                        loaded: (favoriteStations) => favoriteStations
                            .any((station) => station.id == radioStation.id),
                        orElse: () => radioStation.isFavorite,
                      ),
                    );

                    return IconButton(
                      icon: isFavorite
                          ? const Icon(Icons.favorite_rounded)
                          : const Icon(Icons.favorite_border_rounded),
                      onPressed: () => toggleFavoriteStation(
                        context,
                        radioStation.copyWith(isFavorite: isFavorite),
                      ),
                    );
                  }
                ),
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 13.0),
            //   child: VolumeSlider(
            //     value: 0.34,
            //     onValueChanged: (_) {},
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
