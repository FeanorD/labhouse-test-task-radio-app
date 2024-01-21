import 'package:json_annotation/json_annotation.dart';

import '../../../core/database/database.dart';

part 'radio_station_model.g.dart';

@JsonSerializable()
class RadioStation {
  const RadioStation({
    required this.id,
    required this.name,
    required this.audioStreamUrl,
    required this.logoUrl,
    this.isFavorite = false
  });

  factory RadioStation.fromJson(Map<String, dynamic> json) => _$RadioStationFromJson(json);

  factory RadioStation.fromEntity(RadioStationEntity entity) => RadioStation(
    id: entity.id,
    name: entity.name,
    audioStreamUrl: entity.audioStreamUrl,
    logoUrl: entity.iconUrl,

    // For simplicity of this project, because we are getting this only from
    // the favorites table in the database
    isFavorite: true,
  );

  @JsonKey(name: 'stationuuid')
  final String id;
  final String name;

  @JsonKey(name: 'url')
  final String audioStreamUrl;

  @JsonKey(name: 'favicon')
  final String logoUrl;

  @JsonKey(includeFromJson: false, includeToJson: false)
  final bool isFavorite;

  bool get hasIcon => logoUrl.isNotEmpty;

  Map<String, dynamic> toJson() => _$RadioStationToJson(this);

  RadioStationEntity toEntity() => RadioStationEntity(
    id: id,
    name: name,
    audioStreamUrl: audioStreamUrl,
    iconUrl: logoUrl,
  );

  RadioStation copyWith({
    String? id,
    String? name,
    String? audioStreamUrl,
    String? logoUrl,
    bool? isFavorite,
  }) {
    return RadioStation(
      id: id ?? this.id,
      name: name ?? this.name,
      audioStreamUrl: audioStreamUrl ?? this.audioStreamUrl,
      logoUrl: logoUrl ?? this.logoUrl,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}