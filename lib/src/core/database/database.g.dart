// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $RadioStationsTableTable extends RadioStationsTable
    with TableInfo<$RadioStationsTableTable, RadioStationEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RadioStationsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _iconUrlMeta =
      const VerificationMeta('iconUrl');
  @override
  late final GeneratedColumn<String> iconUrl = GeneratedColumn<String>(
      'icon_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _audioStreamUrlMeta =
      const VerificationMeta('audioStreamUrl');
  @override
  late final GeneratedColumn<String> audioStreamUrl = GeneratedColumn<String>(
      'audio_stream_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, iconUrl, audioStreamUrl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'radio_stations_table';
  @override
  VerificationContext validateIntegrity(Insertable<RadioStationEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('icon_url')) {
      context.handle(_iconUrlMeta,
          iconUrl.isAcceptableOrUnknown(data['icon_url']!, _iconUrlMeta));
    } else if (isInserting) {
      context.missing(_iconUrlMeta);
    }
    if (data.containsKey('audio_stream_url')) {
      context.handle(
          _audioStreamUrlMeta,
          audioStreamUrl.isAcceptableOrUnknown(
              data['audio_stream_url']!, _audioStreamUrlMeta));
    } else if (isInserting) {
      context.missing(_audioStreamUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  RadioStationEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RadioStationEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      iconUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}icon_url'])!,
      audioStreamUrl: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}audio_stream_url'])!,
    );
  }

  @override
  $RadioStationsTableTable createAlias(String alias) {
    return $RadioStationsTableTable(attachedDatabase, alias);
  }
}

class RadioStationEntity extends DataClass
    implements Insertable<RadioStationEntity> {
  final String id;
  final String name;
  final String iconUrl;
  final String audioStreamUrl;
  const RadioStationEntity(
      {required this.id,
      required this.name,
      required this.iconUrl,
      required this.audioStreamUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['icon_url'] = Variable<String>(iconUrl);
    map['audio_stream_url'] = Variable<String>(audioStreamUrl);
    return map;
  }

  RadioStationsTableCompanion toCompanion(bool nullToAbsent) {
    return RadioStationsTableCompanion(
      id: Value(id),
      name: Value(name),
      iconUrl: Value(iconUrl),
      audioStreamUrl: Value(audioStreamUrl),
    );
  }

  factory RadioStationEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RadioStationEntity(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      iconUrl: serializer.fromJson<String>(json['iconUrl']),
      audioStreamUrl: serializer.fromJson<String>(json['audioStreamUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'iconUrl': serializer.toJson<String>(iconUrl),
      'audioStreamUrl': serializer.toJson<String>(audioStreamUrl),
    };
  }

  RadioStationEntity copyWith(
          {String? id,
          String? name,
          String? iconUrl,
          String? audioStreamUrl}) =>
      RadioStationEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        iconUrl: iconUrl ?? this.iconUrl,
        audioStreamUrl: audioStreamUrl ?? this.audioStreamUrl,
      );
  @override
  String toString() {
    return (StringBuffer('RadioStationEntity(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('audioStreamUrl: $audioStreamUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, iconUrl, audioStreamUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RadioStationEntity &&
          other.id == this.id &&
          other.name == this.name &&
          other.iconUrl == this.iconUrl &&
          other.audioStreamUrl == this.audioStreamUrl);
}

class RadioStationsTableCompanion extends UpdateCompanion<RadioStationEntity> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> iconUrl;
  final Value<String> audioStreamUrl;
  final Value<int> rowid;
  const RadioStationsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.iconUrl = const Value.absent(),
    this.audioStreamUrl = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RadioStationsTableCompanion.insert({
    required String id,
    required String name,
    required String iconUrl,
    required String audioStreamUrl,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        iconUrl = Value(iconUrl),
        audioStreamUrl = Value(audioStreamUrl);
  static Insertable<RadioStationEntity> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? iconUrl,
    Expression<String>? audioStreamUrl,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (iconUrl != null) 'icon_url': iconUrl,
      if (audioStreamUrl != null) 'audio_stream_url': audioStreamUrl,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RadioStationsTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? iconUrl,
      Value<String>? audioStreamUrl,
      Value<int>? rowid}) {
    return RadioStationsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      iconUrl: iconUrl ?? this.iconUrl,
      audioStreamUrl: audioStreamUrl ?? this.audioStreamUrl,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (iconUrl.present) {
      map['icon_url'] = Variable<String>(iconUrl.value);
    }
    if (audioStreamUrl.present) {
      map['audio_stream_url'] = Variable<String>(audioStreamUrl.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RadioStationsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('audioStreamUrl: $audioStreamUrl, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $RadioStationsTableTable radioStationsTable =
      $RadioStationsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [radioStationsTable];
}
