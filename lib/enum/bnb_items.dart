// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import '../generated/l10n.dart';
import '../ui/income_page/income_page.dart';
import '../ui/search_stock_page/search_stock_page.dart';
import '../ui/settings_page/settings_page.dart';

enum BnbItems {
  income,
  search,
  settings,
}

extension BnbItemsExt on BnbItems {
  Widget get page {
    switch (this) {
      case BnbItems.income:
        return const IncomePage();
      case BnbItems.search:
        return const SearchStockPage();
      case BnbItems.settings:
        return const SettingsPage();
    }
  }

  BottomNavigationBarItem get item {
    final currentContext = GetIt.I<GlobalKey<NavigatorState>>().currentContext!;
    switch (this) {
      case BnbItems.income:
        return BottomNavigationBarItem(
          label: S.of(currentContext).income,
          icon: const Icon(Icons.attach_money),
        );
      case BnbItems.search:
        return BottomNavigationBarItem(
          label: S.of(currentContext).search,
          icon: const Icon(Icons.search),
        );
      case BnbItems.settings:
        return BottomNavigationBarItem(
          label: S.of(currentContext).settings,
          icon: const Icon(Icons.settings),
        );
    }
  }
}
