// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fgi_root_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FgiRootModel _$FgiRootModelFromJson(Map<String, dynamic> json) {
  return _FgiRootModel.fromJson(json);
}

/// @nodoc
mixin _$FgiRootModel {
  FgiModel get fgi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FgiRootModelCopyWith<FgiRootModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FgiRootModelCopyWith<$Res> {
  factory $FgiRootModelCopyWith(
          FgiRootModel value, $Res Function(FgiRootModel) then) =
      _$FgiRootModelCopyWithImpl<$Res, FgiRootModel>;
  @useResult
  $Res call({FgiModel fgi});

  $FgiModelCopyWith<$Res> get fgi;
}

/// @nodoc
class _$FgiRootModelCopyWithImpl<$Res, $Val extends FgiRootModel>
    implements $FgiRootModelCopyWith<$Res> {
  _$FgiRootModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fgi = null,
  }) {
    return _then(_value.copyWith(
      fgi: null == fgi
          ? _value.fgi
          : fgi // ignore: cast_nullable_to_non_nullable
              as FgiModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FgiModelCopyWith<$Res> get fgi {
    return $FgiModelCopyWith<$Res>(_value.fgi, (value) {
      return _then(_value.copyWith(fgi: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FgiRootModelCopyWith<$Res>
    implements $FgiRootModelCopyWith<$Res> {
  factory _$$_FgiRootModelCopyWith(
          _$_FgiRootModel value, $Res Function(_$_FgiRootModel) then) =
      __$$_FgiRootModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FgiModel fgi});

  @override
  $FgiModelCopyWith<$Res> get fgi;
}

/// @nodoc
class __$$_FgiRootModelCopyWithImpl<$Res>
    extends _$FgiRootModelCopyWithImpl<$Res, _$_FgiRootModel>
    implements _$$_FgiRootModelCopyWith<$Res> {
  __$$_FgiRootModelCopyWithImpl(
      _$_FgiRootModel _value, $Res Function(_$_FgiRootModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fgi = null,
  }) {
    return _then(_$_FgiRootModel(
      fgi: null == fgi
          ? _value.fgi
          : fgi // ignore: cast_nullable_to_non_nullable
              as FgiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FgiRootModel extends _FgiRootModel {
  const _$_FgiRootModel({this.fgi = const FgiModel()}) : super._();

  factory _$_FgiRootModel.fromJson(Map<String, dynamic> json) =>
      _$$_FgiRootModelFromJson(json);

  @override
  @JsonKey()
  final FgiModel fgi;

  @override
  String toString() {
    return 'FgiRootModel(fgi: $fgi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FgiRootModel &&
            (identical(other.fgi, fgi) || other.fgi == fgi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fgi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FgiRootModelCopyWith<_$_FgiRootModel> get copyWith =>
      __$$_FgiRootModelCopyWithImpl<_$_FgiRootModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FgiRootModelToJson(
      this,
    );
  }
}

abstract class _FgiRootModel extends FgiRootModel {
  const factory _FgiRootModel({final FgiModel fgi}) = _$_FgiRootModel;
  const _FgiRootModel._() : super._();

  factory _FgiRootModel.fromJson(Map<String, dynamic> json) =
      _$_FgiRootModel.fromJson;

  @override
  FgiModel get fgi;
  @override
  @JsonKey(ignore: true)
  _$$_FgiRootModelCopyWith<_$_FgiRootModel> get copyWith =>
      throw _privateConstructorUsedError;
}
