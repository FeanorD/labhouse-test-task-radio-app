import 'package:flutter/material.dart';

enum HomeTab {
  allRadioStations,
  favoriteRadioStations;

  Widget getIcon([bool isActive = false]) => switch (this) {
    HomeTab.allRadioStations => isActive
        ? const Icon(Icons.radio_rounded)
        : const Icon(Icons.radio_outlined),
    HomeTab.favoriteRadioStations => isActive
        ? const Icon(Icons.favorite_rounded)
        : const Icon(Icons.favorite_border_rounded),
  };
}