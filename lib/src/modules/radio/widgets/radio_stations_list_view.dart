import 'package:flutter/material.dart';

import '../models/radio_station_model.dart';
import 'radio_station_tile.dart';

typedef OnRadioStationTapCallback = void Function(RadioStation radioStation, int index);

class RadioStationsListView extends StatefulWidget {
  const RadioStationsListView({
    required this.radioStations,
    this.selectedRadioStation,
    this.onRadioStationTap,
    this.onAddStationToFavoritesTap,
    this.onLoadMore,
    super.key,
  });

  final RadioStation? selectedRadioStation;
  final List<RadioStation> radioStations;
  // final ValueChanged<RadioStation>? onRadioStationTap;
  final OnRadioStationTapCallback? onRadioStationTap;
  final ValueChanged<RadioStation>? onAddStationToFavoritesTap;
  final VoidCallback? onLoadMore;

  @override
  State<RadioStationsListView> createState() => _RadioStationsListViewState();
}

class _RadioStationsListViewState extends State<RadioStationsListView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_handleLoadMore);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleLoadMore);
    super.dispose();
  }

  void _handleLoadMore() {
    const pointsToBottom = 250;
    if (_scrollController.position.extentAfter < pointsToBottom) {
      widget.onLoadMore?.call();
    }
  }

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
        padding: const EdgeInsets.only(bottom: 100.0),
        controller: _scrollController,
        shrinkWrap: true,
        itemCount: widget.radioStations.length,
        itemBuilder: (context, index) {
          final radioStation = widget.radioStations[index];
          final isSelected = widget.selectedRadioStation?.id == radioStation.id;

          return RadioStationTile(
            key: ValueKey(radioStation.id),
            radioStation: radioStation,
            onTap: () => widget.onRadioStationTap?.call(radioStation, index),
            onFavoriteTap: () => widget.onAddStationToFavoritesTap?.call(radioStation),
            isSelected: isSelected,
          );
        },
        // separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
