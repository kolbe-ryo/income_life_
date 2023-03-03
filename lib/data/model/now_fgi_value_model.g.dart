// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_fgi_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NowFgiValueModel _$$_NowFgiValueModelFromJson(Map<String, dynamic> json) =>
    _$_NowFgiValueModel(
      value: (json['value'] as num?)?.toDouble() ?? 50.0,
      valueText: $enumDecodeNullable(
              _$FearAndGreedIndexEnumEnumMap, json['valueText']) ??
          FearAndGreedIndexEnum.fear,
    );

Map<String, dynamic> _$$_NowFgiValueModelToJson(_$_NowFgiValueModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'valueText': _$FearAndGreedIndexEnumEnumMap[instance.valueText]!,
    };

const _$FearAndGreedIndexEnumEnumMap = {
  FearAndGreedIndexEnum.extremeFear: 'Extreme Fear',
  FearAndGreedIndexEnum.fear: 'Fear',
  FearAndGreedIndexEnum.neutral: 'Neutral',
  FearAndGreedIndexEnum.greed: 'Greed',
  FearAndGreedIndexEnum.extremeGreed: 'Extreme Greed',
};
