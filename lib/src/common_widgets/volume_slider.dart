import 'package:flutter/material.dart';

class VolumeSlider extends StatelessWidget {
  const VolumeSlider({
    required this.value,
    required this.onValueChanged,
    super.key,
  });
  
  final double value;
  final ValueChanged<double> onValueChanged;

  @override
  Widget build(BuildContext context) {
    final parentTheme = Theme.of(context);

    return Theme(
      data: parentTheme.copyWith(
        iconTheme: parentTheme.iconTheme.copyWith(
          color: parentTheme.colorScheme.onSurface,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.volume_down_rounded),
          Expanded(
            child: Slider(
              value: value,
              onChanged: onValueChanged,
            ),
          ),
          const Icon(Icons.volume_up_rounded),
        ],
      ),
    );
  }
}
