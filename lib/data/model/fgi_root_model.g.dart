// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fgi_root_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FgiRootModel _$$_FgiRootModelFromJson(Map<String, dynamic> json) =>
    _$_FgiRootModel(
      fgi: json['fgi'] == null
          ? const FgiModel()
          : FgiModel.fromJson(json['fgi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FgiRootModelToJson(_$_FgiRootModel instance) =>
    <String, dynamic>{
      'fgi': instance.fgi,
    };
