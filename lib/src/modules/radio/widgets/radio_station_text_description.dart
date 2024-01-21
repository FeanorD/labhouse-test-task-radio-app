import 'package:flutter/material.dart';

import '../models/radio_station_model.dart';

class RadioStationTextDescription extends StatelessWidget {
  const RadioStationTextDescription({
    required this.radioStation,
    this.textStyle,
    super.key,
  });

  final RadioStation radioStation;
  final TextStyle? textStyle;

  static const _defaultTextStyle = TextStyle(
    fontSize: 16.0,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 8.0),
      child: Text(
        radioStation.name.trim(),
        style: textStyle ?? _defaultTextStyle,
      ),
    );
  }
}
