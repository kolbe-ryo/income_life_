// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../enum/currency_value.dart';

part 'gsheets_model.freezed.dart';
part 'gsheets_model.g.dart';

@freezed
class GsheetsModel with _$GsheetsModel {
  const factory GsheetsModel({
    @Default(CurrencyValue.usd) CurrencyValue market,
    @Default('') String ticker,
    @Default('') String name,
    @Default('') String jpName,
    @Default(0.0) double price,
    @Default(0.0) double dividend,
    @Default(false) bool isAddedPortfolio,
    @Default(0) int totalStocks,
    @Default(0.0) double exchangeRate,
  }) = _GsheetsModel;

  const GsheetsModel._();

  factory GsheetsModel.fromJson(Map<String, dynamic> json) => _$GsheetsModelFromJson(json);

  String get dividendRate => '${(dividend * 100).toStringAsFixed(2)}%';

  double get incomeUsd {
    switch (market) {
      case CurrencyValue.jpy:
        return totalStocks * price * dividend / exchangeRate;
      case CurrencyValue.usd:
        return totalStocks * price * dividend;
    }
  }

  double get incomeJpy {
    switch (market) {
      case CurrencyValue.jpy:
        return totalStocks * price * dividend;
      case CurrencyValue.usd:
        return totalStocks * price * dividend * exchangeRate;
    }
  }

  double get totalInvestmentUsd {
    switch (market) {
      case CurrencyValue.jpy:
        return totalStocks * price / exchangeRate;
      case CurrencyValue.usd:
        return totalStocks * price;
    }
  }

  double get totalInvestmentJpy {
    switch (market) {
      case CurrencyValue.jpy:
        return totalStocks * price;
      case CurrencyValue.usd:
        return totalStocks * price * exchangeRate;
    }
  }
}
