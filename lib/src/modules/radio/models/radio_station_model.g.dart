// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radio_station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadioStation _$RadioStationFromJson(Map<String, dynamic> json) => RadioStation(
      id: json['stationuuid'] as String,
      name: json['name'] as String,
      audioStreamUrl: json['url'] as String,
      logoUrl: json['favicon'] as String,
    );

Map<String, dynamic> _$RadioStationToJson(RadioStation instance) =>
    <String, dynamic>{
      'stationuuid': instance.id,
      'name': instance.name,
      'url': instance.audioStreamUrl,
      'favicon': instance.logoUrl,
    };
