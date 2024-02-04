import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/loader.dart';
import '../../../common_widgets/volume_slider.dart';
import '../blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../blocs/radio_player_cubit/radio_player_cubit.dart';
import '../models/radio_station_model.dart';
import '../utils/favorite_station_handler_mixin.dart';
import '../widgets/play_button.dart';
import '../widgets/radio_station_logo.dart';

class RadioStationPlayerScreen extends StatelessWidget
    with FavoriteStationsHandlerMixin {
  const RadioStationPlayerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const skipIconSize = 32.0;
    const playIconSize = 60.0;

    final radioPlayerCubit = context.read<RadioPlayerCubit>();

    final currentStation = context.select<RadioPlayerCubit, RadioStation?>(
      (cubit) => cubit.state.currentStation,
    );

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
          if (currentStation != null) Builder(
            builder: (context) {
              final isFavorite = context.select<FavoriteStationsBloc, bool>(
                (cubit) => cubit.state.maybeWhen(
                  loaded: (favoriteStations) => favoriteStations
                      .any((station) => station.id == currentStation.id),
                  orElse: () => currentStation.isFavorite,
                ),
              );

              return IconButton(
                icon: isFavorite
                    ? const Icon(Icons.favorite_rounded)
                    : const Icon(Icons.favorite_border_rounded),
                onPressed: () => toggleFavoriteStation(
                  context,
                  currentStation.copyWith(isFavorite: isFavorite),
                ),
              );
            }
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          if (currentStation == null) {
            return const Center(child: Loader());
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioStationLogo(
                logoUrl: currentStation.logoUrl,
                boxDimension: 200,
                defaultIconSize: 90,
                borderRadius: BorderRadius.circular(28.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 20.0),
                child: Hero(
                  tag: currentStation.id,
                  child: Material(
                    child: Text(
                      currentStation.name,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
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
                    onPressed: () => context.read<RadioPlayerCubit>().seekToPrevious(),
                  ),
                  Builder(
                    builder: (context) {
                      final isPlaying = context.select<RadioPlayerCubit, bool>(
                        (cubit) => cubit.state.isPlaying,
                      );
                      final isAudioLoading = context.select<RadioPlayerCubit, bool>(
                        (cubit) => cubit.state.isAudioLoading,
                      );

                      return PlayButton(
                        iconSize: playIconSize,
                        isPlaying: isPlaying,
                        isAudioLoading: isAudioLoading,
                        onTap: isPlaying
                            ? radioPlayerCubit.pause
                            : radioPlayerCubit.resume,
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.skip_next_rounded,
                      size: skipIconSize,
                    ),
                    onPressed: () => context.read<RadioPlayerCubit>().seekToNext(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Builder(
                  builder: (context) {
                    final volume = context.select<RadioPlayerCubit, double>(
                      (cubit) => cubit.state.volume,
                    );
                    return VolumeSlider(
                      value: volume,
                      onValueChanged: (value) => radioPlayerCubit.setVolume(value),
                    );
                  }
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
