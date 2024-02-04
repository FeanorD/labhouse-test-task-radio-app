// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_stations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RadioStationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStationsEvent value) load,
    required TResult Function(_LoadMoreStationsEvent value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStationsEvent value)? load,
    TResult? Function(_LoadMoreStationsEvent value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStationsEvent value)? load,
    TResult Function(_LoadMoreStationsEvent value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioStationsEventCopyWith<$Res> {
  factory $RadioStationsEventCopyWith(
          RadioStationsEvent value, $Res Function(RadioStationsEvent) then) =
      _$RadioStationsEventCopyWithImpl<$Res, RadioStationsEvent>;
}

/// @nodoc
class _$RadioStationsEventCopyWithImpl<$Res, $Val extends RadioStationsEvent>
    implements $RadioStationsEventCopyWith<$Res> {
  _$RadioStationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadStationsEventImplCopyWith<$Res> {
  factory _$$LoadStationsEventImplCopyWith(_$LoadStationsEventImpl value,
          $Res Function(_$LoadStationsEventImpl) then) =
      __$$LoadStationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadStationsEventImplCopyWithImpl<$Res>
    extends _$RadioStationsEventCopyWithImpl<$Res, _$LoadStationsEventImpl>
    implements _$$LoadStationsEventImplCopyWith<$Res> {
  __$$LoadStationsEventImplCopyWithImpl(_$LoadStationsEventImpl _value,
      $Res Function(_$LoadStationsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadStationsEventImpl implements _LoadStationsEvent {
  const _$LoadStationsEventImpl();

  @override
  String toString() {
    return 'RadioStationsEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadStationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStationsEvent value) load,
    required TResult Function(_LoadMoreStationsEvent value) loadMore,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStationsEvent value)? load,
    TResult? Function(_LoadMoreStationsEvent value)? loadMore,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStationsEvent value)? load,
    TResult Function(_LoadMoreStationsEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadStationsEvent implements RadioStationsEvent {
  const factory _LoadStationsEvent() = _$LoadStationsEventImpl;
}

/// @nodoc
abstract class _$$LoadMoreStationsEventImplCopyWith<$Res> {
  factory _$$LoadMoreStationsEventImplCopyWith(
          _$LoadMoreStationsEventImpl value,
          $Res Function(_$LoadMoreStationsEventImpl) then) =
      __$$LoadMoreStationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreStationsEventImplCopyWithImpl<$Res>
    extends _$RadioStationsEventCopyWithImpl<$Res, _$LoadMoreStationsEventImpl>
    implements _$$LoadMoreStationsEventImplCopyWith<$Res> {
  __$$LoadMoreStationsEventImplCopyWithImpl(_$LoadMoreStationsEventImpl _value,
      $Res Function(_$LoadMoreStationsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreStationsEventImpl implements _LoadMoreStationsEvent {
  const _$LoadMoreStationsEventImpl();

  @override
  String toString() {
    return 'RadioStationsEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreStationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStationsEvent value) load,
    required TResult Function(_LoadMoreStationsEvent value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStationsEvent value)? load,
    TResult? Function(_LoadMoreStationsEvent value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStationsEvent value)? load,
    TResult Function(_LoadMoreStationsEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreStationsEvent implements RadioStationsEvent {
  const factory _LoadMoreStationsEvent() = _$LoadMoreStationsEventImpl;
}

/// @nodoc
mixin _$RadioStationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)
        loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)?
        loaded,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioStationsLoadedState value) loaded,
    required TResult Function(RadioStationsLoadingState value) loading,
    required TResult Function(RadioStationsErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioStationsLoadedState value)? loaded,
    TResult? Function(RadioStationsLoadingState value)? loading,
    TResult? Function(RadioStationsErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioStationsLoadedState value)? loaded,
    TResult Function(RadioStationsLoadingState value)? loading,
    TResult Function(RadioStationsErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioStationsStateCopyWith<$Res> {
  factory $RadioStationsStateCopyWith(
          RadioStationsState value, $Res Function(RadioStationsState) then) =
      _$RadioStationsStateCopyWithImpl<$Res, RadioStationsState>;
}

/// @nodoc
class _$RadioStationsStateCopyWithImpl<$Res, $Val extends RadioStationsState>
    implements $RadioStationsStateCopyWith<$Res> {
  _$RadioStationsStateCopyWithImpl(this._value, this._then);

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
  $Res call(
      {List<RadioStation> allStations,
      List<RadioStation>? lastAddedStationsPortion,
      bool hasReachedEnd});
}

/// @nodoc
class __$$RadioStationsLoadedStateImplCopyWithImpl<$Res>
    extends _$RadioStationsStateCopyWithImpl<$Res,
        _$RadioStationsLoadedStateImpl>
    implements _$$RadioStationsLoadedStateImplCopyWith<$Res> {
  __$$RadioStationsLoadedStateImplCopyWithImpl(
      _$RadioStationsLoadedStateImpl _value,
      $Res Function(_$RadioStationsLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allStations = null,
    Object? lastAddedStationsPortion = freezed,
    Object? hasReachedEnd = null,
  }) {
    return _then(_$RadioStationsLoadedStateImpl(
      allStations: null == allStations
          ? _value._allStations
          : allStations // ignore: cast_nullable_to_non_nullable
              as List<RadioStation>,
      lastAddedStationsPortion: freezed == lastAddedStationsPortion
          ? _value._lastAddedStationsPortion
          : lastAddedStationsPortion // ignore: cast_nullable_to_non_nullable
              as List<RadioStation>?,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RadioStationsLoadedStateImpl implements RadioStationsLoadedState {
  const _$RadioStationsLoadedStateImpl(
      {required final List<RadioStation> allStations,
      final List<RadioStation>? lastAddedStationsPortion,
      this.hasReachedEnd = false})
      : _allStations = allStations,
        _lastAddedStationsPortion = lastAddedStationsPortion;

  final List<RadioStation> _allStations;
  @override
  List<RadioStation> get allStations {
    if (_allStations is EqualUnmodifiableListView) return _allStations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allStations);
  }

  final List<RadioStation>? _lastAddedStationsPortion;
  @override
  List<RadioStation>? get lastAddedStationsPortion {
    final value = _lastAddedStationsPortion;
    if (value == null) return null;
    if (_lastAddedStationsPortion is EqualUnmodifiableListView)
      return _lastAddedStationsPortion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool hasReachedEnd;

  @override
  String toString() {
    return 'RadioStationsState.loaded(allStations: $allStations, lastAddedStationsPortion: $lastAddedStationsPortion, hasReachedEnd: $hasReachedEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioStationsLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allStations, _allStations) &&
            const DeepCollectionEquality().equals(
                other._lastAddedStationsPortion, _lastAddedStationsPortion) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allStations),
      const DeepCollectionEquality().hash(_lastAddedStationsPortion),
      hasReachedEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioStationsLoadedStateImplCopyWith<_$RadioStationsLoadedStateImpl>
      get copyWith => __$$RadioStationsLoadedStateImplCopyWithImpl<
          _$RadioStationsLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)
        loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loaded(allStations, lastAddedStationsPortion, hasReachedEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(allStations, lastAddedStationsPortion, hasReachedEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)?
        loaded,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(allStations, lastAddedStationsPortion, hasReachedEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioStationsLoadedState value) loaded,
    required TResult Function(RadioStationsLoadingState value) loading,
    required TResult Function(RadioStationsErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioStationsLoadedState value)? loaded,
    TResult? Function(RadioStationsLoadingState value)? loading,
    TResult? Function(RadioStationsErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioStationsLoadedState value)? loaded,
    TResult Function(RadioStationsLoadingState value)? loading,
    TResult Function(RadioStationsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RadioStationsLoadedState implements RadioStationsState {
  const factory RadioStationsLoadedState(
      {required final List<RadioStation> allStations,
      final List<RadioStation>? lastAddedStationsPortion,
      final bool hasReachedEnd}) = _$RadioStationsLoadedStateImpl;

  List<RadioStation> get allStations;
  List<RadioStation>? get lastAddedStationsPortion;
  bool get hasReachedEnd;
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
    extends _$RadioStationsStateCopyWithImpl<$Res,
        _$RadioStationsLoadingStateImpl>
    implements _$$RadioStationsLoadingStateImplCopyWith<$Res> {
  __$$RadioStationsLoadingStateImplCopyWithImpl(
      _$RadioStationsLoadingStateImpl _value,
      $Res Function(_$RadioStationsLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RadioStationsLoadingStateImpl implements RadioStationsLoadingState {
  const _$RadioStationsLoadingStateImpl();

  @override
  String toString() {
    return 'RadioStationsState.loading()';
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
    required TResult Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)
        loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)?
        loaded,
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
    required TResult Function(RadioStationsLoadedState value) loaded,
    required TResult Function(RadioStationsLoadingState value) loading,
    required TResult Function(RadioStationsErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioStationsLoadedState value)? loaded,
    TResult? Function(RadioStationsLoadingState value)? loading,
    TResult? Function(RadioStationsErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioStationsLoadedState value)? loaded,
    TResult Function(RadioStationsLoadingState value)? loading,
    TResult Function(RadioStationsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RadioStationsLoadingState implements RadioStationsState {
  const factory RadioStationsLoadingState() = _$RadioStationsLoadingStateImpl;
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
    extends _$RadioStationsStateCopyWithImpl<$Res,
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

class _$RadioStationsErrorStateImpl implements RadioStationsErrorState {
  const _$RadioStationsErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RadioStationsState.error(message: $message)';
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
    required TResult Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)
        loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RadioStation> allStations,
            List<RadioStation>? lastAddedStationsPortion, bool hasReachedEnd)?
        loaded,
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
    required TResult Function(RadioStationsLoadedState value) loaded,
    required TResult Function(RadioStationsLoadingState value) loading,
    required TResult Function(RadioStationsErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioStationsLoadedState value)? loaded,
    TResult? Function(RadioStationsLoadingState value)? loading,
    TResult? Function(RadioStationsErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioStationsLoadedState value)? loaded,
    TResult Function(RadioStationsLoadingState value)? loading,
    TResult Function(RadioStationsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RadioStationsErrorState implements RadioStationsState {
  const factory RadioStationsErrorState(final String message) =
      _$RadioStationsErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RadioStationsErrorStateImplCopyWith<_$RadioStationsErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
