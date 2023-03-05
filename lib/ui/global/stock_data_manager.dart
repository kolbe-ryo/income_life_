// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

// Project imports:
import '../../data/interface/gsheets_interface.dart';
import '../../data/interface/local_repository_interface.dart';
import '../../data/model/gsheets_model.dart';
import '../../enum/added_condition_enum.dart';
import '../../generated/l10n.dart';
import '../../util/logger.dart';
import '../common/notification_toast.dart';
import 'stock_data_state.dart';

class StockDataManager extends StateNotifier<StockDataState> with LocatorMixin {
  StockDataManager([super.state = const StockDataState()]);

  StockDataState get info => state;

  set info(StockDataState updateState) => state = updateState;

  @override
  Future<void> initState() async {
    await reload();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<bool> reload() async {
    state = state.copyWith(isLoading: true);
    await _fetchGsheets();
    await _fetchFromLocal();
    state = state.copyWith(isLoading: false);
    return state.isSuccessFetch;
  }

  // fetch data from Gsheets and Local Repository
  Future<void> _fetchGsheets() async {
    try {
      state = state.copyWith(
        gsheets: await GetIt.I<GsheetsInterface>().fetch(),
        isSuccessFetch: true,
      );
      logger.info(state);
    } on Exception catch (error) {
      final context = GetIt.I<GlobalKey<NavigatorState>>().currentContext!;
      if (error is SocketException) {
        await NotificationToast.showToast(
          context: context,
          message: S.of(context).noInternetConnection,
        );
      } else {
        await NotificationToast.showToast(
          context: context,
          message: S.of(context).errorHasOccurred,
        );
      }
    }
  }

  // Switch stock isAddedPortfolio and Save local storage
  void addPortfolio(GsheetsModel model) {
    final addedItem = model.copyWith(
      isAddedPortfolio: true,
      totalStocks: model.totalStocks + state.currentAddingStocks,
    );
    state = state.copyWith(
      gsheets: state.gsheets
          .map(
            (item) => item.ticker == model.ticker ? addedItem : item,
          )
          .toList(),
    );
    _saveToLocal();
  }

  // Switch stock isAddedPortfolio and Save local storage
  void deletePortfolio(GsheetsModel model) {
    final addedItem = model.copyWith(
      isAddedPortfolio: false,
      totalStocks: 0,
    );
    state = state.copyWith(
      gsheets: state.gsheets
          .map(
            (item) => item.ticker == model.ticker ? addedItem : item,
          )
          .toList(),
    );
    _saveToLocal();
  }

  void deleteAll() {
    final resetGsheets = state.gsheets
        .map(
          (model) => model.copyWith(isAddedPortfolio: false),
        )
        .toList();
    state = state.copyWith(
      currentAddingStocks: 0,
      gsheets: resetGsheets,
    );
    resetLocal();
  }

  // Save to local storage
  Future<void> _fetchFromLocal() async {
    final localModels = await GetIt.I<LocalRepositoryInterface>().getLocalModel();
    // No result from gsheets
    if (state.gsheets.isEmpty) {
      state = state.copyWith(gsheets: localModels);
      return;
    }

    // If matching local portfolio ticker, add it, else add gsheets model
    final models = <GsheetsModel>[];
    for (final model in state.gsheets) {
      models.add(model);
      // Add already been portfolio ones
      for (final localModel in localModels) {
        if (model.ticker == localModel.ticker) {
          // Update all except isAddedPortfolio and totalStocks
          // replace fetch model to local portfolio
          models.last = localModel.copyWith(
            name: model.name,
            jpName: model.jpName,
            price: model.price,
            dividend: model.dividend,
            exchangeRate: model.exchangeRate,
          );
          break;
        }
      }
    }
    state = state.copyWith(gsheets: models);
  }

  // Save to local storage
  Future<void> _saveToLocal() async {
    await GetIt.I<LocalRepositoryInterface>().saveModel(state.portfolio);
  }

  Future<void> resetLocal() async {
    await GetIt.I<LocalRepositoryInterface>().deleteAll();
  }

  void inputNumverOfStock(int stocks) {
    state = state.copyWith(currentAddingStocks: stocks);
  }

  List<GsheetsModel> selectGsheets({
    required StockDataState state,
    required AddedConditionEnum condition,
  }) {
    switch (condition) {
      case AddedConditionEnum.isAdded:
        return state.portfolio;
      case AddedConditionEnum.notAdded:
        return state.notPortfolio;
      case AddedConditionEnum.all:
        return state.gsheets;
    }
  }
}
