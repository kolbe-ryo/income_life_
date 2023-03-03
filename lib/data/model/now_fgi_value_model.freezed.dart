// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'now_fgi_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NowFgiValueModel _$NowFgiValueModelFromJson(Map<String, dynamic> json) {
  return _NowFgiValueModel.fromJson(json);
}

/// @nodoc
mixin _$NowFgiValueModel {
  double get value => throw _privateConstructorUsedError;
  FearAndGreedIndexEnum get valueText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowFgiValueModelCopyWith<NowFgiValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowFgiValueModelCopyWith<$Res> {
  factory $NowFgiValueModelCopyWith(
          NowFgiValueModel value, $Res Function(NowFgiValueModel) then) =
      _$NowFgiValueModelCopyWithImpl<$Res, NowFgiValueModel>;
  @useResult
  $Res call({double value, FearAndGreedIndexEnum valueText});
}

/// @nodoc
class _$NowFgiValueModelCopyWithImpl<$Res, $Val extends NowFgiValueModel>
    implements $NowFgiValueModelCopyWith<$Res> {
  _$NowFgiValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? valueText = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      valueText: null == valueText
          ? _value.valueText
          : valueText // ignore: cast_nullable_to_non_nullable
              as FearAndGreedIndexEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NowFgiValueModelCopyWith<$Res>
    implements $NowFgiValueModelCopyWith<$Res> {
  factory _$$_NowFgiValueModelCopyWith(
          _$_NowFgiValueModel value, $Res Function(_$_NowFgiValueModel) then) =
      __$$_NowFgiValueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, FearAndGreedIndexEnum valueText});
}

/// @nodoc
class __$$_NowFgiValueModelCopyWithImpl<$Res>
    extends _$NowFgiValueModelCopyWithImpl<$Res, _$_NowFgiValueModel>
    implements _$$_NowFgiValueModelCopyWith<$Res> {
  __$$_NowFgiValueModelCopyWithImpl(
      _$_NowFgiValueModel _value, $Res Function(_$_NowFgiValueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? valueText = null,
  }) {
    return _then(_$_NowFgiValueModel(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      valueText: null == valueText
          ? _value.valueText
          : valueText // ignore: cast_nullable_to_non_nullable
              as FearAndGreedIndexEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NowFgiValueModel extends _NowFgiValueModel {
  const _$_NowFgiValueModel(
      {this.value = 50.0, this.valueText = FearAndGreedIndexEnum.fear})
      : super._();

  factory _$_NowFgiValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_NowFgiValueModelFromJson(json);

  @override
  @JsonKey()
  final double value;
  @override
  @JsonKey()
  final FearAndGreedIndexEnum valueText;

  @override
  String toString() {
    return 'NowFgiValueModel(value: $value, valueText: $valueText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NowFgiValueModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueText, valueText) ||
                other.valueText == valueText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, valueText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NowFgiValueModelCopyWith<_$_NowFgiValueModel> get copyWith =>
      __$$_NowFgiValueModelCopyWithImpl<_$_NowFgiValueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NowFgiValueModelToJson(
      this,
    );
  }
}

abstract class _NowFgiValueModel extends NowFgiValueModel {
  const factory _NowFgiValueModel(
      {final double value,
      final FearAndGreedIndexEnum valueText}) = _$_NowFgiValueModel;
  const _NowFgiValueModel._() : super._();

  factory _NowFgiValueModel.fromJson(Map<String, dynamic> json) =
      _$_NowFgiValueModel.fromJson;

  @override
  double get value;
  @override
  FearAndGreedIndexEnum get valueText;
  @override
  @JsonKey(ignore: true)
  _$$_NowFgiValueModelCopyWith<_$_NowFgiValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
