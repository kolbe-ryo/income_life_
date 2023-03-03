// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import '../generated/l10n.dart';

enum CurrencyValue {
  usd,
  jpy,
}

extension CurrencyValueExt on CurrencyValue {
  String get value {
    final currentContext = GetIt.I<GlobalKey<NavigatorState>>().currentContext!;
    switch (this) {
      case CurrencyValue.usd:
        return S.of(currentContext).usd;
      case CurrencyValue.jpy:
        return S.of(currentContext).jpy;
    }
  }
}

CurrencyValue? toEnum(String value) {
  switch (value) {
    case 'USA':
      return CurrencyValue.usd;
    case 'JP':
      return CurrencyValue.jpy;
    default:
      return null;
  }
}
