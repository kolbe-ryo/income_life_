// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import '../../data/model/gsheets_model.dart';
import '../../enum/stock_information_attribute_enum.dart';
import '../../generated/l10n.dart';
import '../../util/admob/admob_reward/admob_reward_page_state.dart';
import '../../util/admob/admob_reward/admob_reward_page_view_model.dart';
import '../../util/constants.dart';
import '../global/stock_data_manager.dart';
import '../search_stock_page/search_stock_page_view_model.dart';
import 'add_portfolio_dialog_design.dart';
import 'app_colors.dart';
import 'base_card.dart';
import 'base_show_dialog.dart';
import 'notification_toast.dart';

class StockInformationCard extends BaseCard {
  const StockInformationCard({super.key}) : super();

  @override
  Widget innerTextWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _UnitInformation(StockInformationAttribute.name),
        _UnitInformation(StockInformationAttribute.price),
        _UnitInformation(StockInformationAttribute.devidend),
      ],
    );
  }

  @override
  void Function()? onTap(BuildContext context) {
    return () async {
      // Check display
      final isConfirmAdmobDisplay = await baseShowDialog(
            context: context,
            title: S.of(context).checkAdmobDisplay,
            widget: Padding(
              padding: const EdgeInsets.only(top: kPadding),
              child: Text(S.of(context).checkAdmobDisplayDetails),
            ),
            isSimpleDialog: true,
          ) ??
          false;
      if (!isConfirmAdmobDisplay) {
        return;
      }

      // AdmobReward
      final admobRewardState = context.read<AdmobRewardPageState>();
      final admobRewardViewModel = context.read<AdmobRewardPageViewModel>();
      if (admobRewardState.isLoaded && admobRewardState.rewardCount == 0) {
        // Play Reward
        await admobRewardViewModel.showRewardAd(
          () async {
            await _future(context);
          },
        );
      } else {
        admobRewardViewModel.decrementRewardCount();
        await _future(context);
      }
    };
  }

  Future<void> _future(BuildContext context) async {
    // job for stock card tap button
    final model = context.read<GsheetsModel>();
    final stockDataManager = context.read<StockDataManager>();
    final searchStockPageViewModel = context.read<SearchStockPageViewModel>();
    final formKey = GlobalKey<FormState>();
    void inputMethod(int stocks) => stockDataManager.inputNumverOfStock(stocks);
    final intlMessage = S.of(context);

    final isAdded = await baseShowDialog(
      context: context,
      title: intlMessage.checkAdding,
      formKey: formKey,
      widget: MultiProvider(
        providers: [
          Provider.value(value: inputMethod),
          Provider.value(value: formKey),
        ],
        child: AddPortfolioDialogDesign(model),
      ),
    );
    if (isAdded ?? false) {
      stockDataManager.addPortfolio(model);
      searchStockPageViewModel.load();
      await NotificationToast.showToast(
        context: context,
        message: intlMessage.completeAddition,
      );
    }
  }
}

class _UnitInformation extends StatelessWidget {
  const _UnitInformation(this.attribute);

  final StockInformationAttribute attribute;

  @override
  Widget build(BuildContext context) {
    final mediaWidth = context.select((MediaQueryData value) => value.size.width);
    final model = context.watch<GsheetsModel>();
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 18,
        overflow: TextOverflow.ellipsis,
      ),
      child: SizedBox(
        width: _getWidth(mediaWidth - kPadding * 3),
        height: kCardHeight,
        child: Padding(
          padding: const EdgeInsets.only(left: kPadding / 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: _getWidgets(
              attribute: attribute,
              info: model,
              context: context,
            ),
          ),
        ),
      ),
    );
  }

  double _getWidth(double width) {
    switch (attribute) {
      case StockInformationAttribute.name:
        return width * 4 / 10;
      case StockInformationAttribute.price:
        return width * 3 / 10;
      case StockInformationAttribute.devidend:
        return width * 3 / 10;
    }
  }

  List<Widget> _getWidgets({
    required StockInformationAttribute attribute,
    required GsheetsModel info,
    required BuildContext context,
  }) {
    switch (attribute) {
      case StockInformationAttribute.name:
        return [
          Container(
            color: info.isAddedPortfolio ? AppColors.deepOrangeAccent : AppColors.teal,
            padding: const EdgeInsets.all(2),
            child: Text(
              info.ticker,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(info.name),
          ),
        ];
      case StockInformationAttribute.price:
        return [
          Text(
            S.of(context).price,
            style: const TextStyle(
              color: AppColors.grey,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text('${info.price}'),
          ),
        ];
      case StockInformationAttribute.devidend:
        return [
          Text(
            S.of(context).dividend,
            style: const TextStyle(
              color: AppColors.grey,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(info.dividendRate),
          ),
        ];
    }
  }
}
