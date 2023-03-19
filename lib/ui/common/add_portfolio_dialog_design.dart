// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../data/model/gsheets_model.dart';
import '../../generated/l10n.dart';
import '../../util/constants.dart';
import '../../util/logger.dart';
import 'custom_text_field.dart';

class AddPortfolioDialogDesign extends StatelessWidget {
  const AddPortfolioDialogDesign(this.model, {super.key});

  final GsheetsModel model;

  @override
  Widget build(BuildContext context) {
    logger.info(model.jpName);
    return Padding(
      padding: const EdgeInsets.only(top: kPadding / 2, left: kPadding),
      child: DefaultTextStyle(
        style: const TextStyle(fontSize: kFontSize),
        child: Table(
          children: [
            _tableRow(
              label: S.of(context).tickerName,
              content: model.ticker,
            ),
            _tableRow(
              label: S.of(context).fullName,
              content: model.name,
            ),
            if (model.jpName != '-')
              _tableRow(
                label: S.of(context).jpName,
                content: model.jpName,
              ),
            if (model.isAddedPortfolio)
              _tableRow(
                label: S.of(context).totalStocks,
                content: model.totalStocks.toString(),
              ),
            _tableRow(
              label: SizedBox(
                height: 36,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(S.of(context).adding),
                ),
              ),
              content: const DigitsTextField(),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _tableRow<E, T>({required E label, required T content}) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: kPadding),
          child: (label is String) ? Text(label) : label as Widget,
        ),
        Padding(
          padding: const EdgeInsets.only(top: kPadding),
          child: (content is String) ? Text(content) : content as Widget,
        ),
      ],
    );
  }
}
