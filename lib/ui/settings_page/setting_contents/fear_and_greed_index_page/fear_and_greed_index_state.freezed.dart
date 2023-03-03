// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fear_and_greed_index_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FearAndGreedIndexState {
  FearAndGreedIndexEnum get indexEnum => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FearAndGreedIndexStateCopyWith<FearAndGreedIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FearAndGreedIndexStateCopyWith<$Res> {
  factory $FearAndGreedIndexStateCopyWith(FearAndGreedIndexState value,
          $Res Function(FearAndGreedIndexState) then) =
      _$FearAndGreedIndexStateCopyWithImpl<$Res, FearAndGreedIndexState>;
  @useResult
  $Res call({FearAndGreedIndexEnum indexEnum, double value, bool isLoading});
}

/// @nodoc
class _$FearAndGreedIndexStateCopyWithImpl<$Res,
        $Val extends FearAndGreedIndexState>
    implements $FearAndGreedIndexStateCopyWith<$Res> {
  _$FearAndGreedIndexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexEnum = null,
    Object? value = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      indexEnum: null == indexEnum
          ? _value.indexEnum
          : indexEnum // ignore: cast_nullable_to_non_nullable
              as FearAndGreedIndexEnum,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FearAndGreedIndexStateCopyWith<$Res>
    implements $FearAndGreedIndexStateCopyWith<$Res> {
  factory _$$_FearAndGreedIndexStateCopyWith(_$_FearAndGreedIndexState value,
          $Res Function(_$_FearAndGreedIndexState) then) =
      __$$_FearAndGreedIndexStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FearAndGreedIndexEnum indexEnum, double value, bool isLoading});
}

/// @nodoc
class __$$_FearAndGreedIndexStateCopyWithImpl<$Res>
    extends _$FearAndGreedIndexStateCopyWithImpl<$Res,
        _$_FearAndGreedIndexState>
    implements _$$_FearAndGreedIndexStateCopyWith<$Res> {
  __$$_FearAndGreedIndexStateCopyWithImpl(_$_FearAndGreedIndexState _value,
      $Res Function(_$_FearAndGreedIndexState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexEnum = null,
    Object? value = null,
    Object? isLoading = null,
  }) {
    return _then(_$_FearAndGreedIndexState(
      indexEnum: null == indexEnum
          ? _value.indexEnum
          : indexEnum // ignore: cast_nullable_to_non_nullable
              as FearAndGreedIndexEnum,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FearAndGreedIndexState extends _FearAndGreedIndexState {
  const _$_FearAndGreedIndexState(
      {this.indexEnum = FearAndGreedIndexEnum.neutral,
      this.value = 50.0,
      this.isLoading = true})
      : super._();

  @override
  @JsonKey()
  final FearAndGreedIndexEnum indexEnum;
  @override
  @JsonKey()
  final double value;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'FearAndGreedIndexState(indexEnum: $indexEnum, value: $value, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FearAndGreedIndexState &&
            (identical(other.indexEnum, indexEnum) ||
                other.indexEnum == indexEnum) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexEnum, value, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FearAndGreedIndexStateCopyWith<_$_FearAndGreedIndexState> get copyWith =>
      __$$_FearAndGreedIndexStateCopyWithImpl<_$_FearAndGreedIndexState>(
          this, _$identity);
}

abstract class _FearAndGreedIndexState extends FearAndGreedIndexState {
  const factory _FearAndGreedIndexState(
      {final FearAndGreedIndexEnum indexEnum,
      final double value,
      final bool isLoading}) = _$_FearAndGreedIndexState;
  const _FearAndGreedIndexState._() : super._();

  @override
  FearAndGreedIndexEnum get indexEnum;
  @override
  double get value;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_FearAndGreedIndexStateCopyWith<_$_FearAndGreedIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}
