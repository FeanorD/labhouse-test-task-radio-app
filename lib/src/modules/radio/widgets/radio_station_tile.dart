import 'package:flutter/material.dart';

import '../models/radio_station_model.dart';
import 'radio_station_logo.dart';
import 'radio_station_text_description.dart';

class RadioStationTile extends StatelessWidget {
  const RadioStationTile({
    required this.radioStation,
    this.isSelected = false,
    this.onTap,
    this.onFavoriteTap,
    super.key,
  });

  final RadioStation radioStation;
  final bool isSelected;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: isSelected ? colorScheme.surfaceVariant.withOpacity(0.4) : null,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: Row(
            children: [
              RadioStationLogo(
                logoUrl: radioStation.logoUrl,
                isSelected: isSelected,
              ),
              Expanded(
                child: RadioStationTextDescription(
                  radioStation: radioStation,
                ),
              ),
              IconButton(
                onPressed: onFavoriteTap,
                icon: radioStation.isFavorite
                    ? const Icon(Icons.favorite_rounded)
                    : const Icon(Icons.favorite_outline_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
