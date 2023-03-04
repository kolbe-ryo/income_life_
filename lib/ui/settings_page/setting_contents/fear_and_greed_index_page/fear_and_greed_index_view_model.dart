// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:diox/diox.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

// Project imports:
import '../../../../data/interface/fear_and_greed_index_interface.dart';
import '../../../../generated/l10n.dart';
import '../../../common/notification_toast.dart';
import '../../../global/stock_data_manager.dart';
import 'fear_and_greed_index_state.dart';

class FearAndGreedIndexViewModel extends StateNotifier<FearAndGreedIndexState> with LocatorMixin {
  FearAndGreedIndexViewModel() : super(const FearAndGreedIndexState());

  StockDataManager get _manager => read();

  @override
  Future<void> initState() async {
    // Response cache data if have cache for alternate api call
    if (_manager.info.fgiState != null) {
      state = _manager.info.fgiState!;
      return;
    }

    try {
      // fetch fear and greed index
      final response = await GetIt.I<FearAndGreedIndexInterface>().fetchFGIndex();
      state = state.copyWith(
        indexEnum: response.valueText,
        value: response.value,
        isLoading: false,
      );
      // Cashing API response for next open FGI page
      _manager.info = _manager.info.copyWith(fgiState: state);
    } on DioError catch (_) {
      final context = GetIt.I<GlobalKey<NavigatorState>>().currentContext!;
      await NotificationToast.showToast(
        context: context,
        message: S.of(context).errorHasOccurred,
      );
      state = state.copyWith(isLoading: false);
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
