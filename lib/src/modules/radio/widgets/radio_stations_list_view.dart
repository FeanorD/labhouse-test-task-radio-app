import 'package:flutter/material.dart';

import '../models/radio_station_model.dart';
import 'radio_station_tile.dart';

class RadioStationsListView extends StatefulWidget {
  const RadioStationsListView({
    required this.radioStations,
    this.onRadioStationTap,
    this.onAddStationToFavoritesTap,
    super.key,
  });

  final List<RadioStation> radioStations;
  final ValueChanged<RadioStation>? onRadioStationTap;
  final ValueChanged<RadioStation>? onAddStationToFavoritesTap;

  @override
  State<RadioStationsListView> createState() => _RadioStationsListViewState();
}

class _RadioStationsListViewState extends State<RadioStationsListView> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    if (widget.radioStations.isEmpty) {
      return const Center(
        child: Text(
          'No radio stations here yet :(',
          textAlign: TextAlign.center,
        ),
      );
    }

    return Scrollbar(
      controller: _scrollController,
      thumbVisibility: true,
      child: ListView.builder(
        controller: _scrollController,
        shrinkWrap: true,
        itemCount: widget.radioStations.length,
        itemBuilder: (context, index) {
          final radioStation = widget.radioStations[index];
          return RadioStationTile(
            radioStation: radioStation,
            onTap: () => widget.onRadioStationTap?.call(radioStation),
            onFavoriteTap: () => widget.onAddStationToFavoritesTap?.call(radioStation),
            isSelected: index == 1,
          );
        },
        // separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
