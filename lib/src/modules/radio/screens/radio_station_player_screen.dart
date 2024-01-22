import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/volume_slider.dart';
import '../../../config/di/injection.dart';
import '../blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../models/radio_station_model.dart';
import '../utils/favorite_station_handler_mixin.dart';
import '../utils/radio_player/radio_player.dart';
import '../widgets/radio_station_logo.dart';

class RadioStationPlayerScreen extends StatelessWidget
    with FavoriteStationsHandlerMixin {
  const RadioStationPlayerScreen({
    required this.radioStation,
    super.key,
  });

  final RadioStation radioStation;

  @override
  Widget build(BuildContext context) {
    const skipIconSize = 32.0;
    const playIconSize = 60.0;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 32.0,
          ),
          onPressed: Navigator.of(context).pop,
        ),
        actions: [
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioStationLogo(
            logoUrl: radioStation.logoUrl,
            boxDimension: 200,
            defaultIconSize: 90,
            borderRadius: BorderRadius.circular(28.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 20.0),
            child: Text(
              radioStation.name,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const Divider(
            indent: 34.0,
            endIndent: 34.0,
            thickness: 1.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.skip_previous_rounded,
                  size: skipIconSize,
                ),
                onPressed: () {},
              ),
              StreamBuilder<bool>(
                  stream: getIt<RadioPlayer>().playingStream,
                  builder: (context, snapshot) {
                    final isPlaying = snapshot.data ?? false;
                    return IconButton(
                        icon: Icon(
                          isPlaying
                              ? Icons.pause_rounded
                              : Icons.play_arrow_rounded,
                          size: playIconSize,
                        ),
                        onPressed: isPlaying
                            ? getIt<RadioPlayer>().pause
                            : getIt<RadioPlayer>().resume,
                    );
                  }
              ),
              IconButton(
                icon: const Icon(
                  Icons.skip_next_rounded,
                  size: skipIconSize,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: StreamBuilder<double>(
              stream: getIt<RadioPlayer>().volumeStream,
              builder: (context, snapshot) {
                final volume = snapshot.data ?? 1.0;
                return VolumeSlider(
                  value: volume,
                  onValueChanged: (value) =>
                      getIt<RadioPlayer>().setVolume(value),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
