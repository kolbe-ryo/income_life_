// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fgi_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FgiModel _$FgiModelFromJson(Map<String, dynamic> json) {
  return _FgiModel.fromJson(json);
}

/// @nodoc
mixin _$FgiModel {
  NowFgiValueModel get now => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FgiModelCopyWith<FgiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FgiModelCopyWith<$Res> {
  factory $FgiModelCopyWith(FgiModel value, $Res Function(FgiModel) then) =
      _$FgiModelCopyWithImpl<$Res, FgiModel>;
  @useResult
  $Res call({NowFgiValueModel now});

  $NowFgiValueModelCopyWith<$Res> get now;
}

/// @nodoc
class _$FgiModelCopyWithImpl<$Res, $Val extends FgiModel>
    implements $FgiModelCopyWith<$Res> {
  _$FgiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? now = null,
  }) {
    return _then(_value.copyWith(
      now: null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as NowFgiValueModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NowFgiValueModelCopyWith<$Res> get now {
    return $NowFgiValueModelCopyWith<$Res>(_value.now, (value) {
      return _then(_value.copyWith(now: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FgiModelCopyWith<$Res> implements $FgiModelCopyWith<$Res> {
  factory _$$_FgiModelCopyWith(
          _$_FgiModel value, $Res Function(_$_FgiModel) then) =
      __$$_FgiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NowFgiValueModel now});

  @override
  $NowFgiValueModelCopyWith<$Res> get now;
}

/// @nodoc
class __$$_FgiModelCopyWithImpl<$Res>
    extends _$FgiModelCopyWithImpl<$Res, _$_FgiModel>
    implements _$$_FgiModelCopyWith<$Res> {
  __$$_FgiModelCopyWithImpl(
      _$_FgiModel _value, $Res Function(_$_FgiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? now = null,
  }) {
    return _then(_$_FgiModel(
      now: null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as NowFgiValueModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FgiModel extends _FgiModel {
  const _$_FgiModel({this.now = const NowFgiValueModel()}) : super._();

  factory _$_FgiModel.fromJson(Map<String, dynamic> json) =>
      _$$_FgiModelFromJson(json);

  @override
  @JsonKey()
  final NowFgiValueModel now;

  @override
  String toString() {
    return 'FgiModel(now: $now)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FgiModel &&
            (identical(other.now, now) || other.now == now));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, now);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FgiModelCopyWith<_$_FgiModel> get copyWith =>
      __$$_FgiModelCopyWithImpl<_$_FgiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FgiModelToJson(
      this,
    );
  }
}

abstract class _FgiModel extends FgiModel {
  const factory _FgiModel({final NowFgiValueModel now}) = _$_FgiModel;
  const _FgiModel._() : super._();

  factory _FgiModel.fromJson(Map<String, dynamic> json) = _$_FgiModel.fromJson;

  @override
  NowFgiValueModel get now;
  @override
  @JsonKey(ignore: true)
  _$$_FgiModelCopyWith<_$_FgiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
