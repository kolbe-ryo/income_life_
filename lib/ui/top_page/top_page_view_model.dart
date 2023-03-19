// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:app_review/app_review.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

// Project imports:
import '../../data/interface/local_repository_interface.dart';
import '../../enum/bnb_items.dart';
import '../../enum/chart_theme_enum.dart';
import '../../enum/color_index_enum.dart';
import '../../enum/currency_value.dart';
import '../../util/admob/admob_banner.dart';
import '../../util/logger.dart';
import 'top_page_state.dart';

class TopPageViewModel extends StateNotifier<TopPageState> with LocatorMixin {
  TopPageViewModel() : super(const TopPageState());

  late final Map<BnbItems, GlobalKey<NavigatorState>> _navigatorKeys;

  late final Future<Widget> _admobBanner;

  Map<BnbItems, GlobalKey<NavigatorState>> get navigatorKeys => _navigatorKeys;

  Future<Widget> get admobBanner => _admobBanner;

  @override
  void initState() {
    _appReview();
    _navigatorKeys = <BnbItems, GlobalKey<NavigatorState>>{
      BnbItems.income: GlobalKey<NavigatorState>(),
      BnbItems.search: GlobalKey<NavigatorState>(),
      BnbItems.settings: GlobalKey<NavigatorState>(),
    };
    _admobBanner = GetIt.I<AdmobBanner>().getBannerWidget();
    _fetchThemeFromLocal();
    super.initState();
  }

  /// This method is used to trigger the app review prompt after the app has been
  /// used 10 times.
  Future<void> _appReview() async {
    final useAppCount = await GetIt.I<LocalRepositoryInterface>().getAppReviewCompletedCount();
    if (useAppCount == 4) {
      await AppReview.requestReview.then(logger.info);
      return;
    }
    await GetIt.I<LocalRepositoryInterface>().setAppReviewCompletedCount(useAppCount + 1);
  }

  Future<void> _fetchThemeFromLocal() async {
    final localColorTheme = await GetIt.I<LocalRepositoryInterface>().getLocalColorTheme();
    final localChartTheme = await GetIt.I<LocalRepositoryInterface>().getLocalChartTheme();
    final localCurrencyValue = await GetIt.I<LocalRepositoryInterface>().getLocalCurrencyValue();

    state = state.copyWith(
      chartTheme: localChartTheme ?? state.chartTheme,
      colorTheme: localColorTheme ?? state.colorTheme,
      currencyValue: localCurrencyValue ?? state.currencyValue,
    );
  }

  Future<void> _saveToLocal() async {
    await GetIt.I<LocalRepositoryInterface>().saveChartTheme(state.chartTheme);
    await GetIt.I<LocalRepositoryInterface>().saveColorTheme(state.colorTheme);
    await GetIt.I<LocalRepositoryInterface>().saveCurrencyValue(state.currencyValue);
  }

  void switchBNB(int index) {
    state = state.copyWith(pageIndex: index);
  }

  void switchColorTheme(ColorIndexEnum colorTheme) {
    state = state.copyWith(colorTheme: colorTheme);
    _saveToLocal();
  }

  void switchChartTheme(ChartThemeEnum chartTheme) {
    state = state.copyWith(chartTheme: chartTheme);
    _saveToLocal();
  }

  void switchCurrencyValue(CurrencyValue currencyValue) {
    state = state.copyWith(currencyValue: currencyValue);
    _saveToLocal();
  }
}
