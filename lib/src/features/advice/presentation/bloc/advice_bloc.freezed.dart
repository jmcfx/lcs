// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdviceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() adviceRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? adviceRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? adviceRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Requested value) adviceRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Requested value)? adviceRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Requested value)? adviceRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdviceEventCopyWith<$Res> {
  factory $AdviceEventCopyWith(
          AdviceEvent value, $Res Function(AdviceEvent) then) =
      _$AdviceEventCopyWithImpl<$Res, AdviceEvent>;
}

/// @nodoc
class _$AdviceEventCopyWithImpl<$Res, $Val extends AdviceEvent>
    implements $AdviceEventCopyWith<$Res> {
  _$AdviceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdviceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RequestedImplCopyWith<$Res> {
  factory _$$RequestedImplCopyWith(
          _$RequestedImpl value, $Res Function(_$RequestedImpl) then) =
      __$$RequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedImplCopyWithImpl<$Res>
    extends _$AdviceEventCopyWithImpl<$Res, _$RequestedImpl>
    implements _$$RequestedImplCopyWith<$Res> {
  __$$RequestedImplCopyWithImpl(
      _$RequestedImpl _value, $Res Function(_$RequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdviceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestedImpl implements _Requested {
  const _$RequestedImpl();

  @override
  String toString() {
    return 'AdviceEvent.adviceRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() adviceRequested,
  }) {
    return adviceRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? adviceRequested,
  }) {
    return adviceRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? adviceRequested,
    required TResult orElse(),
  }) {
    if (adviceRequested != null) {
      return adviceRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Requested value) adviceRequested,
  }) {
    return adviceRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Requested value)? adviceRequested,
  }) {
    return adviceRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Requested value)? adviceRequested,
    required TResult orElse(),
  }) {
    if (adviceRequested != null) {
      return adviceRequested(this);
    }
    return orElse();
  }
}

abstract class _Requested implements AdviceEvent {
  const factory _Requested() = _$RequestedImpl;
}

/// @nodoc
mixin _$AdviceState {
  AdviceStateCategory get adviceState => throw _privateConstructorUsedError;
  bool get isAdviceLoading => throw _privateConstructorUsedError;
  String? get adviceLoaded => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AdviceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdviceStateCopyWith<AdviceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdviceStateCopyWith<$Res> {
  factory $AdviceStateCopyWith(
          AdviceState value, $Res Function(AdviceState) then) =
      _$AdviceStateCopyWithImpl<$Res, AdviceState>;
  @useResult
  $Res call(
      {AdviceStateCategory adviceState,
      bool isAdviceLoading,
      String? adviceLoaded,
      String? errorMessage});
}

/// @nodoc
class _$AdviceStateCopyWithImpl<$Res, $Val extends AdviceState>
    implements $AdviceStateCopyWith<$Res> {
  _$AdviceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdviceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adviceState = null,
    Object? isAdviceLoading = null,
    Object? adviceLoaded = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      adviceState: null == adviceState
          ? _value.adviceState
          : adviceState // ignore: cast_nullable_to_non_nullable
              as AdviceStateCategory,
      isAdviceLoading: null == isAdviceLoading
          ? _value.isAdviceLoading
          : isAdviceLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      adviceLoaded: freezed == adviceLoaded
          ? _value.adviceLoaded
          : adviceLoaded // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdviceStateImplCopyWith<$Res>
    implements $AdviceStateCopyWith<$Res> {
  factory _$$AdviceStateImplCopyWith(
          _$AdviceStateImpl value, $Res Function(_$AdviceStateImpl) then) =
      __$$AdviceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AdviceStateCategory adviceState,
      bool isAdviceLoading,
      String? adviceLoaded,
      String? errorMessage});
}

/// @nodoc
class __$$AdviceStateImplCopyWithImpl<$Res>
    extends _$AdviceStateCopyWithImpl<$Res, _$AdviceStateImpl>
    implements _$$AdviceStateImplCopyWith<$Res> {
  __$$AdviceStateImplCopyWithImpl(
      _$AdviceStateImpl _value, $Res Function(_$AdviceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdviceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adviceState = null,
    Object? isAdviceLoading = null,
    Object? adviceLoaded = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AdviceStateImpl(
      adviceState: null == adviceState
          ? _value.adviceState
          : adviceState // ignore: cast_nullable_to_non_nullable
              as AdviceStateCategory,
      isAdviceLoading: null == isAdviceLoading
          ? _value.isAdviceLoading
          : isAdviceLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      adviceLoaded: freezed == adviceLoaded
          ? _value.adviceLoaded
          : adviceLoaded // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdviceStateImpl implements _AdviceState {
  const _$AdviceStateImpl(
      {this.adviceState = AdviceStateCategory.idle,
      this.isAdviceLoading = false,
      this.adviceLoaded,
      this.errorMessage});

  @override
  @JsonKey()
  final AdviceStateCategory adviceState;
  @override
  @JsonKey()
  final bool isAdviceLoading;
  @override
  final String? adviceLoaded;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AdviceState(adviceState: $adviceState, isAdviceLoading: $isAdviceLoading, adviceLoaded: $adviceLoaded, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdviceStateImpl &&
            (identical(other.adviceState, adviceState) ||
                other.adviceState == adviceState) &&
            (identical(other.isAdviceLoading, isAdviceLoading) ||
                other.isAdviceLoading == isAdviceLoading) &&
            (identical(other.adviceLoaded, adviceLoaded) ||
                other.adviceLoaded == adviceLoaded) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, adviceState, isAdviceLoading, adviceLoaded, errorMessage);

  /// Create a copy of AdviceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdviceStateImplCopyWith<_$AdviceStateImpl> get copyWith =>
      __$$AdviceStateImplCopyWithImpl<_$AdviceStateImpl>(this, _$identity);
}

abstract class _AdviceState implements AdviceState {
  const factory _AdviceState(
      {final AdviceStateCategory adviceState,
      final bool isAdviceLoading,
      final String? adviceLoaded,
      final String? errorMessage}) = _$AdviceStateImpl;

  @override
  AdviceStateCategory get adviceState;
  @override
  bool get isAdviceLoading;
  @override
  String? get adviceLoaded;
  @override
  String? get errorMessage;

  /// Create a copy of AdviceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdviceStateImplCopyWith<_$AdviceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
