// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fgi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FgiModel _$$_FgiModelFromJson(Map<String, dynamic> json) => _$_FgiModel(
      now: json['now'] == null
          ? const NowFgiValueModel()
          : NowFgiValueModel.fromJson(json['now'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FgiModelToJson(_$_FgiModel instance) =>
    <String, dynamic>{
      'now': instance.now,
    };
