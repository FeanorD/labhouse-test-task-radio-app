import 'package:flutter/material.dart';

class RadioStationLogo extends StatelessWidget {
  const RadioStationLogo({
    this.isSelected = false,
    this.boxDimension = 70.0,
    this.defaultIconSize = 40.0,
    this.logoUrl,
    this.borderRadius,
    super.key,
  });

  final String? logoUrl;
  final bool isSelected;
  final BorderRadius? borderRadius;
  final double boxDimension;
  final double defaultIconSize;

  bool get _hasIcon => logoUrl != null && logoUrl!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(9.0),
      child: SizedBox.square(
        dimension: boxDimension,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isSelected
                ? colorScheme.surface
                : colorScheme.surfaceVariant,
          ),
          child: _hasIcon
              ? Image.network(logoUrl!, fit: BoxFit.contain)
              : Icon(
                  Icons.radio_outlined,
                  size: defaultIconSize,
                  color: isSelected
                      ? colorScheme.onSurface
                      : colorScheme.onSurfaceVariant,
                ),
        ),
      ),
    );
  }
}
