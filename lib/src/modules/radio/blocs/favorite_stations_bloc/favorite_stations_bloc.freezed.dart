// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_stations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteStationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(RadioStation station) addStation,
    required TResult Function(String stationId) removeStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(RadioStation station)? addStation,
    TResult? Function(String stationId)? removeStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(RadioStation station)? addStation,
    TResult Function(String stationId)? removeStation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllFavoriteStationsEvent value) loadAll,
    required TResult Function(_AddStationToFavoritesEvent value) addStation,
    required TResult Function(_RemoveStationFromFavoritesEvent value)
        removeStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllFavoriteStationsEvent value)? loadAll,
    TResult? Function(_AddStationToFavoritesEvent value)? addStation,
    TResult? Function(_RemoveStationFromFavoritesEvent value)? removeStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllFavoriteStationsEvent value)? loadAll,
    TResult Function(_AddStationToFavoritesEvent value)? addStation,
    TResult Function(_RemoveStationFromFavoritesEvent value)? removeStation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStationsEventCopyWith<$Res> {
  factory $FavoriteStationsEventCopyWith(FavoriteStationsEvent value,
          $Res Function(FavoriteStationsEvent) then) =
      _$FavoriteStationsEventCopyWithImpl<$Res, FavoriteStationsEvent>;
}

/// @nodoc
class _$FavoriteStationsEventCopyWithImpl<$Res,
        $Val extends FavoriteStationsEvent>
    implements $FavoriteStationsEventCopyWith<$Res> {
  _$FavoriteStationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadAllFavoriteStationsEventImplCopyWith<$Res> {
  factory _$$LoadAllFavoriteStationsEventImplCopyWith(
          _$LoadAllFavoriteStationsEventImpl value,
          $Res Function(_$LoadAllFavoriteStationsEventImpl) then) =
      __$$LoadAllFavoriteStationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAllFavoriteStationsEventImplCopyWithImpl<$Res>
    extends _$FavoriteStationsEventCopyWithImpl<$Res,
        _$LoadAllFavoriteStationsEventImpl>
    implements _$$LoadAllFavoriteStationsEventImplCopyWith<$Res> {
  __$$LoadAllFavoriteStationsEventImplCopyWithImpl(
      _$LoadAllFavoriteStationsEventImpl _value,
      $Res Function(_$LoadAllFavoriteStationsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadAllFavoriteStationsEventImpl extends _LoadAllFavoriteStationsEvent {
  const _$LoadAllFavoriteStationsEventImpl() : super._();

  @override
  String toString() {
    return 'FavoriteStationsEvent.loadAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllFavoriteStationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(RadioStation station) addStation,
    required TResult Function(String stationId) removeStation,
  }) {
    return loadAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(RadioStation station)? addStation,
    TResult? Function(String stationId)? removeStation,
  }) {
    return loadAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(RadioStation station)? addStation,
    TResult Function(String stationId)? removeStation,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllFavoriteStationsEvent value) loadAll,
    required TResult Function(_AddStationToFavoritesEvent value) addStation,
    required TResult Function(_RemoveStationFromFavoritesEvent value)
        removeStation,
  }) {
    return loadAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllFavoriteStationsEvent value)? loadAll,
    TResult? Function(_AddStationToFavoritesEvent value)? addStation,
    TResult? Function(_RemoveStationFromFavoritesEvent value)? removeStation,
  }) {
    return loadAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllFavoriteStationsEvent value)? loadAll,
    TResult Function(_AddStationToFavoritesEvent value)? addStation,
    TResult Function(_RemoveStationFromFavoritesEvent value)? removeStation,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll(this);
    }
    return orElse();
  }
}

abstract class _LoadAllFavoriteStationsEvent extends FavoriteStationsEvent {
  const factory _LoadAllFavoriteStationsEvent() =
      _$LoadAllFavoriteStationsEventImpl;
  const _LoadAllFavoriteStationsEvent._() : super._();
}

/// @nodoc
abstract class _$$AddStationToFavoritesEventImplCopyWith<$Res> {
  factory _$$AddStationToFavoritesEventImplCopyWith(
          _$AddStationToFavoritesEventImpl value,
          $Res Function(_$AddStationToFavoritesEventImpl) then) =
      __$$AddStationToFavoritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RadioStation station});
}

/// @nodoc
class __$$AddStationToFavoritesEventImplCopyWithImpl<$Res>
    extends _$FavoriteStationsEventCopyWithImpl<$Res,
        _$AddStationToFavoritesEventImpl>
    implements _$$AddStationToFavoritesEventImplCopyWith<$Res> {
  __$$AddStationToFavoritesEventImplCopyWithImpl(
      _$AddStationToFavoritesEventImpl _value,
      $Res Function(_$AddStationToFavoritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
  }) {
    return _then(_$AddStationToFavoritesEventImpl(
      null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as RadioStation,
    ));
  }
}

/// @nodoc

class _$AddStationToFavoritesEventImpl extends _AddStationToFavoritesEvent {
  const _$AddStationToFavoritesEventImpl(this.station) : super._();

  @override
  final RadioStation station;

  @override
  String toString() {
    return 'FavoriteStationsEvent.addStation(station: $station)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStationToFavoritesEventImpl &&
            (identical(other.station, station) || other.station == station));
  }

  @override
  int get hashCode => Object.hash(runtimeType, station);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStationToFavoritesEventImplCopyWith<_$AddStationToFavoritesEventImpl>
      get copyWith => __$$AddStationToFavoritesEventImplCopyWithImpl<
          _$AddStationToFavoritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(RadioStation station) addStation,
    required TResult Function(String stationId) removeStation,
  }) {
    return addStation(station);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(RadioStation station)? addStation,
    TResult? Function(String stationId)? removeStation,
  }) {
    return addStation?.call(station);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(RadioStation station)? addStation,
    TResult Function(String stationId)? removeStation,
    required TResult orElse(),
  }) {
    if (addStation != null) {
      return addStation(station);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllFavoriteStationsEvent value) loadAll,
    required TResult Function(_AddStationToFavoritesEvent value) addStation,
    required TResult Function(_RemoveStationFromFavoritesEvent value)
        removeStation,
  }) {
    return addStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllFavoriteStationsEvent value)? loadAll,
    TResult? Function(_AddStationToFavoritesEvent value)? addStation,
    TResult? Function(_RemoveStationFromFavoritesEvent value)? removeStation,
  }) {
    return addStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllFavoriteStationsEvent value)? loadAll,
    TResult Function(_AddStationToFavoritesEvent value)? addStation,
    TResult Function(_RemoveStationFromFavoritesEvent value)? removeStation,
    required TResult orElse(),
  }) {
    if (addStation != null) {
      return addStation(this);
    }
    return orElse();
  }
}

abstract class _AddStationToFavoritesEvent extends FavoriteStationsEvent {
  const factory _AddStationToFavoritesEvent(final RadioStation station) =
      _$AddStationToFavoritesEventImpl;
  const _AddStationToFavoritesEvent._() : super._();

  RadioStation get station;
  @JsonKey(ignore: true)
  _$$AddStationToFavoritesEventImplCopyWith<_$AddStationToFavoritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveStationFromFavoritesEventImplCopyWith<$Res> {
  factory _$$RemoveStationFromFavoritesEventImplCopyWith(
          _$RemoveStationFromFavoritesEventImpl value,
          $Res Function(_$RemoveStationFromFavoritesEventImpl) then) =
      __$$RemoveStationFromFavoritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stationId});
}

/// @nodoc
class __$$RemoveStationFromFavoritesEventImplCopyWithImpl<$Res>
    extends _$FavoriteStationsEventCopyWithImpl<$Res,
        _$RemoveStationFromFavoritesEventImpl>
    implements _$$RemoveStationFromFavoritesEventImplCopyWith<$Res> {
  __$$RemoveStationFromFavoritesEventImplCopyWithImpl(
      _$RemoveStationFromFavoritesEventImpl _value,
      $Res Function(_$RemoveStationFromFavoritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationId = null,
  }) {
    return _then(_$RemoveStationFromFavoritesEventImpl(
      null == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveStationFromFavoritesEventImpl
    extends _RemoveStationFromFavoritesEvent {
  const _$RemoveStationFromFavoritesEventImpl(this.stationId) : super._();

  @override
  final String stationId;

  @override
  String toString() {
    return 'FavoriteStationsEvent.removeStation(stationId: $stationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveStationFromFavoritesEventImpl &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveStationFromFavoritesEventImplCopyWith<
          _$RemoveStationFromFavoritesEventImpl>
      get copyWith => __$$RemoveStationFromFavoritesEventImplCopyWithImpl<
          _$RemoveStationFromFavoritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(RadioStation station) addStation,
    required TResult Function(String stationId) removeStation,
  }) {
    return removeStation(stationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(RadioStation station)? addStation,
    TResult? Function(String stationId)? removeStation,
  }) {
    return removeStation?.call(stationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(RadioStation station)? addStation,
    TResult Function(String stationId)? removeStation,
    required TResult orElse(),
  }) {
    if (removeStation != null) {
      return removeStation(stationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllFavoriteStationsEvent value) loadAll,
    required TResult Function(_AddStationToFavoritesEvent value) addStation,
    required TResult Function(_RemoveStationFromFavoritesEvent value)
        removeStation,
  }) {
    return removeStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllFavoriteStationsEvent value)? loadAll,
    TResult? Function(_AddStationToFavoritesEvent value)? addStation,
    TResult? Function(_RemoveStationFromFavoritesEvent value)? removeStation,
  }) {
    return removeStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllFavoriteStationsEvent value)? loadAll,
    TResult Function(_AddStationToFavoritesEvent value)? addStation,
    TResult Function(_RemoveStationFromFavoritesEvent value)? removeStation,
    required TResult orElse(),
  }) {
    if (removeStation != null) {
      return removeStation(this);
    }
    return orElse();
  }
}

abstract class _RemoveStationFromFavoritesEvent extends FavoriteStationsEvent {
  const factory _RemoveStationFromFavoritesEvent(final String stationId) =
      _$RemoveStationFromFavoritesEventImpl;
  const _RemoveStationFromFavoritesEvent._() : super._();

  String get stationId;
  @JsonKey(ignore: true)
  _$$RemoveStationFromFavoritesEventImplCopyWith<
          _$RemoveStationFromFavoritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteStationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RadioStation> stations) loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RadioStation> stations)? loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RadioStation> stations)? loaded,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RadioStationsLoadedState value) loaded,
    required TResult Function(_RadioStationsLoadingState value) loading,
    required TResult Function(_RadioStationsErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RadioStationsLoadedState value)? loaded,
    TResult? Function(_RadioStationsLoadingState value)? loading,
    TResult? Function(_RadioStationsErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RadioStationsLoadedState value)? loaded,
    TResult Function(_RadioStationsLoadingState value)? loading,
    TResult Function(_RadioStationsErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStationsStateCopyWith<$Res> {
  factory $FavoriteStationsStateCopyWith(FavoriteStationsState value,
          $Res Function(FavoriteStationsState) then) =
      _$FavoriteStationsStateCopyWithImpl<$Res, FavoriteStationsState>;
}

/// @nodoc
class _$FavoriteStationsStateCopyWithImpl<$Res,
        $Val extends FavoriteStationsState>
    implements $FavoriteStationsStateCopyWith<$Res> {
  _$FavoriteStationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RadioStationsLoadedStateImplCopyWith<$Res> {
  factory _$$RadioStationsLoadedStateImplCopyWith(
          _$RadioStationsLoadedStateImpl value,
          $Res Function(_$RadioStationsLoadedStateImpl) then) =
      __$$RadioStationsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RadioStation> stations});
}

/// @nodoc
class __$$RadioStationsLoadedStateImplCopyWithImpl<$Res>
    extends _$FavoriteStationsStateCopyWithImpl<$Res,
        _$RadioStationsLoadedStateImpl>
    implements _$$RadioStationsLoadedStateImplCopyWith<$Res> {
  __$$RadioStationsLoadedStateImplCopyWithImpl(
      _$RadioStationsLoadedStateImpl _value,
      $Res Function(_$RadioStationsLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stations = null,
  }) {
    return _then(_$RadioStationsLoadedStateImpl(
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<RadioStation>,
    ));
  }
}

/// @nodoc

class _$RadioStationsLoadedStateImpl implements _RadioStationsLoadedState {
  const _$RadioStationsLoadedStateImpl(
      {required final List<RadioStation> stations})
      : _stations = stations;

  final List<RadioStation> _stations;
  @override
  List<RadioStation> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'FavoriteStationsState.loaded(stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioStationsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioStationsLoadedStateImplCopyWith<_$RadioStationsLoadedStateImpl>
      get copyWith => __$$RadioStationsLoadedStateImplCopyWithImpl<
          _$RadioStationsLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RadioStation> stations) loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loaded(stations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RadioStation> stations)? loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(stations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RadioStation> stations)? loaded,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RadioStationsLoadedState value) loaded,
    required TResult Function(_RadioStationsLoadingState value) loading,
    required TResult Function(_RadioStationsErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RadioStationsLoadedState value)? loaded,
    TResult? Function(_RadioStationsLoadingState value)? loading,
    TResult? Function(_RadioStationsErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RadioStationsLoadedState value)? loaded,
    TResult Function(_RadioStationsLoadingState value)? loading,
    TResult Function(_RadioStationsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _RadioStationsLoadedState implements FavoriteStationsState {
  const factory _RadioStationsLoadedState(
          {required final List<RadioStation> stations}) =
      _$RadioStationsLoadedStateImpl;

  List<RadioStation> get stations;
  @JsonKey(ignore: true)
  _$$RadioStationsLoadedStateImplCopyWith<_$RadioStationsLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioStationsLoadingStateImplCopyWith<$Res> {
  factory _$$RadioStationsLoadingStateImplCopyWith(
          _$RadioStationsLoadingStateImpl value,
          $Res Function(_$RadioStationsLoadingStateImpl) then) =
      __$$RadioStationsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RadioStationsLoadingStateImplCopyWithImpl<$Res>
    extends _$FavoriteStationsStateCopyWithImpl<$Res,
        _$RadioStationsLoadingStateImpl>
    implements _$$RadioStationsLoadingStateImplCopyWith<$Res> {
  __$$RadioStationsLoadingStateImplCopyWithImpl(
      _$RadioStationsLoadingStateImpl _value,
      $Res Function(_$RadioStationsLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RadioStationsLoadingStateImpl implements _RadioStationsLoadingState {
  const _$RadioStationsLoadingStateImpl();

  @override
  String toString() {
    return 'FavoriteStationsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioStationsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RadioStation> stations) loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RadioStation> stations)? loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RadioStation> stations)? loaded,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RadioStationsLoadedState value) loaded,
    required TResult Function(_RadioStationsLoadingState value) loading,
    required TResult Function(_RadioStationsErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RadioStationsLoadedState value)? loaded,
    TResult? Function(_RadioStationsLoadingState value)? loading,
    TResult? Function(_RadioStationsErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RadioStationsLoadedState value)? loaded,
    TResult Function(_RadioStationsLoadingState value)? loading,
    TResult Function(_RadioStationsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RadioStationsLoadingState implements FavoriteStationsState {
  const factory _RadioStationsLoadingState() = _$RadioStationsLoadingStateImpl;
}

/// @nodoc
abstract class _$$RadioStationsErrorStateImplCopyWith<$Res> {
  factory _$$RadioStationsErrorStateImplCopyWith(
          _$RadioStationsErrorStateImpl value,
          $Res Function(_$RadioStationsErrorStateImpl) then) =
      __$$RadioStationsErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RadioStationsErrorStateImplCopyWithImpl<$Res>
    extends _$FavoriteStationsStateCopyWithImpl<$Res,
        _$RadioStationsErrorStateImpl>
    implements _$$RadioStationsErrorStateImplCopyWith<$Res> {
  __$$RadioStationsErrorStateImplCopyWithImpl(
      _$RadioStationsErrorStateImpl _value,
      $Res Function(_$RadioStationsErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RadioStationsErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RadioStationsErrorStateImpl implements _RadioStationsErrorState {
  const _$RadioStationsErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FavoriteStationsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioStationsErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioStationsErrorStateImplCopyWith<_$RadioStationsErrorStateImpl>
      get copyWith => __$$RadioStationsErrorStateImplCopyWithImpl<
          _$RadioStationsErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RadioStation> stations) loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RadioStation> stations)? loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RadioStation> stations)? loaded,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RadioStationsLoadedState value) loaded,
    required TResult Function(_RadioStationsLoadingState value) loading,
    required TResult Function(_RadioStationsErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RadioStationsLoadedState value)? loaded,
    TResult? Function(_RadioStationsLoadingState value)? loading,
    TResult? Function(_RadioStationsErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RadioStationsLoadedState value)? loaded,
    TResult Function(_RadioStationsLoadingState value)? loading,
    TResult Function(_RadioStationsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RadioStationsErrorState implements FavoriteStationsState {
  const factory _RadioStationsErrorState(final String message) =
      _$RadioStationsErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RadioStationsErrorStateImplCopyWith<_$RadioStationsErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
