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
    const spacer = SizedBox(width: 6.0);

    return Row(
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.volume_down_rounded),
        // spacer,
        Expanded(
          child: Slider(
            value: value,
            onChanged: onValueChanged,
          ),
        ),
        // spacer,
        const Icon(Icons.volume_up_rounded),
      ],
    );
  }
}
