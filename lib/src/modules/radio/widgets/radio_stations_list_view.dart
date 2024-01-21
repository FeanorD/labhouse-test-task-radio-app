import 'package:flutter/material.dart';

import '../models/radio_station_model.dart';
import 'radio_station_tile.dart';

class RadioStationsListView extends StatefulWidget {
  const RadioStationsListView({
    required this.radioStations,
    this.onRadioStationTap,
    this.onAddStationToFavoritesTap,
    this.onLoadMore,
    super.key,
  });

  final List<RadioStation> radioStations;
  final ValueChanged<RadioStation>? onRadioStationTap;
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
        controller: _scrollController,
        shrinkWrap: true,
        itemCount: widget.radioStations.length,
        itemBuilder: (context, index) {
          final radioStation = widget.radioStations[index];
          return RadioStationTile(
            key: ValueKey(radioStation.id),
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
