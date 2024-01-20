import 'package:json_annotation/json_annotation.dart';

part 'radio_station_model.g.dart';

@JsonSerializable()
class RadioStation {
  RadioStation({
    required this.id,
    required this.name,
    required this.audioStreamUrl,
    required this.logoUrl,
  });

  @JsonKey(name: 'stationuuid')
  final String id;
  final String name;

  @JsonKey(name: 'url')
  final String audioStreamUrl;

  @JsonKey(name: 'favicon')
  final String logoUrl;

  factory RadioStation.fromJson(Map<String, dynamic> json) => _$RadioStationFromJson(json);

  Map<String, dynamic> toJson() => _$RadioStationToJson(this);
}