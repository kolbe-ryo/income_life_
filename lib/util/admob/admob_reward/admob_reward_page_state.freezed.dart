// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admob_reward_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdmobRewardPageState {
  RewardedAd? get rewardedAd => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  int get rewardCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdmobRewardPageStateCopyWith<AdmobRewardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdmobRewardPageStateCopyWith<$Res> {
  factory $AdmobRewardPageStateCopyWith(AdmobRewardPageState value,
          $Res Function(AdmobRewardPageState) then) =
      _$AdmobRewardPageStateCopyWithImpl<$Res, AdmobRewardPageState>;
  @useResult
  $Res call({RewardedAd? rewardedAd, bool isLoaded, int rewardCount});
}

/// @nodoc
class _$AdmobRewardPageStateCopyWithImpl<$Res,
        $Val extends AdmobRewardPageState>
    implements $AdmobRewardPageStateCopyWith<$Res> {
  _$AdmobRewardPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardedAd = freezed,
    Object? isLoaded = null,
    Object? rewardCount = null,
  }) {
    return _then(_value.copyWith(
      rewardedAd: freezed == rewardedAd
          ? _value.rewardedAd
          : rewardedAd // ignore: cast_nullable_to_non_nullable
              as RewardedAd?,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      rewardCount: null == rewardCount
          ? _value.rewardCount
          : rewardCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdmobRewardPageStateCopyWith<$Res>
    implements $AdmobRewardPageStateCopyWith<$Res> {
  factory _$$_AdmobRewardPageStateCopyWith(_$_AdmobRewardPageState value,
          $Res Function(_$_AdmobRewardPageState) then) =
      __$$_AdmobRewardPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardedAd? rewardedAd, bool isLoaded, int rewardCount});
}

/// @nodoc
class __$$_AdmobRewardPageStateCopyWithImpl<$Res>
    extends _$AdmobRewardPageStateCopyWithImpl<$Res, _$_AdmobRewardPageState>
    implements _$$_AdmobRewardPageStateCopyWith<$Res> {
  __$$_AdmobRewardPageStateCopyWithImpl(_$_AdmobRewardPageState _value,
      $Res Function(_$_AdmobRewardPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardedAd = freezed,
    Object? isLoaded = null,
    Object? rewardCount = null,
  }) {
    return _then(_$_AdmobRewardPageState(
      rewardedAd: freezed == rewardedAd
          ? _value.rewardedAd
          : rewardedAd // ignore: cast_nullable_to_non_nullable
              as RewardedAd?,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      rewardCount: null == rewardCount
          ? _value.rewardCount
          : rewardCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AdmobRewardPageState implements _AdmobRewardPageState {
  const _$_AdmobRewardPageState(
      {this.rewardedAd, this.isLoaded = false, this.rewardCount = 0});

  @override
  final RewardedAd? rewardedAd;
  @override
  @JsonKey()
  final bool isLoaded;
  @override
  @JsonKey()
  final int rewardCount;

  @override
  String toString() {
    return 'AdmobRewardPageState(rewardedAd: $rewardedAd, isLoaded: $isLoaded, rewardCount: $rewardCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdmobRewardPageState &&
            (identical(other.rewardedAd, rewardedAd) ||
                other.rewardedAd == rewardedAd) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.rewardCount, rewardCount) ||
                other.rewardCount == rewardCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, rewardedAd, isLoaded, rewardCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdmobRewardPageStateCopyWith<_$_AdmobRewardPageState> get copyWith =>
      __$$_AdmobRewardPageStateCopyWithImpl<_$_AdmobRewardPageState>(
          this, _$identity);
}

abstract class _AdmobRewardPageState implements AdmobRewardPageState {
  const factory _AdmobRewardPageState(
      {final RewardedAd? rewardedAd,
      final bool isLoaded,
      final int rewardCount}) = _$_AdmobRewardPageState;

  @override
  RewardedAd? get rewardedAd;
  @override
  bool get isLoaded;
  @override
  int get rewardCount;
  @override
  @JsonKey(ignore: true)
  _$$_AdmobRewardPageStateCopyWith<_$_AdmobRewardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
