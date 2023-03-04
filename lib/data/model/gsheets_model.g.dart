// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gsheets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GsheetsModel _$$_GsheetsModelFromJson(Map<String, dynamic> json) =>
    _$_GsheetsModel(
      market: $enumDecodeNullable(_$CurrencyValueEnumMap, json['market']) ??
          CurrencyValue.usd,
      ticker: json['ticker'] as String? ?? '',
      name: json['name'] as String? ?? '',
      jpName: json['jpName'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      dividend: (json['dividend'] as num?)?.toDouble() ?? 0.0,
      isAddedPortfolio: json['isAddedPortfolio'] as bool? ?? false,
      totalStocks: json['totalStocks'] as int? ?? 0,
      exchangeRate: (json['exchangeRate'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_GsheetsModelToJson(_$_GsheetsModel instance) =>
    <String, dynamic>{
      'market': _$CurrencyValueEnumMap[instance.market]!,
      'ticker': instance.ticker,
      'name': instance.name,
      'jpName': instance.jpName,
      'price': instance.price,
      'dividend': instance.dividend,
      'isAddedPortfolio': instance.isAddedPortfolio,
      'totalStocks': instance.totalStocks,
      'exchangeRate': instance.exchangeRate,
    };

const _$CurrencyValueEnumMap = {
  CurrencyValue.usd: 'usd',
  CurrencyValue.jpy: 'jpy',
};
