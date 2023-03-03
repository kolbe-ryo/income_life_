// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

// Project imports:
import '../../../../enum/fear_and_greed_index_enum.dart';
import '../../../../generated/l10n.dart';
import '../../../../util/constants.dart';
import 'fear_and_greed_index_state.dart';
import 'fear_and_greed_index_view_model.dart';

class FearAndGreedIndexPage extends StatelessWidget {
  const FearAndGreedIndexPage({super.key});

  static Route<FearAndGreedIndexPage> route() {
    return MaterialPageRoute<FearAndGreedIndexPage>(
      builder: (_) => StateNotifierProvider<FearAndGreedIndexViewModel, FearAndGreedIndexState>(
        create: (_) => FearAndGreedIndexViewModel(),
        builder: (context, _) {
          return const FearAndGreedIndexPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentGauge = context.select((FearAndGreedIndexState value) => value.value);
    final valueText = context.select((FearAndGreedIndexState value) => value.indexEnum.name);
    final gaugeColor = context.select((FearAndGreedIndexState value) => value.colorFromValue);
    final isLoading = context.select((FearAndGreedIndexState value) => value.isLoading);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).fearAndGreed),
        ),
        body: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Center(
            child: isLoading
                ? const CupertinoActivityIndicator(radius: 24)
                : SfRadialGauge(
                    axes: [
                      RadialAxis(
                        ranges: <GaugeRange>[
                          GaugeRange(
                            startValue: 0,
                            endValue: 25,
                            color: FearAndGreedIndexEnum.extremeFear.color,
                            startWidth: 40,
                            endWidth: 30,
                          ),
                          GaugeRange(
                            startValue: 25,
                            endValue: 45,
                            color: FearAndGreedIndexEnum.fear.color,
                            startWidth: 30,
                            endWidth: 20,
                          ),
                          GaugeRange(
                            startValue: 45,
                            endValue: 55,
                            color: FearAndGreedIndexEnum.neutral.color,
                            startWidth: 20,
                            endWidth: 20,
                          ),
                          GaugeRange(
                            startValue: 55,
                            endValue: 75,
                            color: FearAndGreedIndexEnum.greed.color,
                            startWidth: 20,
                            endWidth: 30,
                          ),
                          GaugeRange(
                            startValue: 75,
                            endValue: 100,
                            color: FearAndGreedIndexEnum.extremeGreed.color,
                            startWidth: 30,
                            endWidth: 40,
                          )
                        ],
                        pointers: <GaugePointer>[
                          NeedlePointer(value: currentGauge),
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                            widget: Text(
                              '\n${currentGauge.toInt().toString()}\n\n$valueText',
                              style: TextStyle(
                                color: gaugeColor,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            angle: 90,
                            positionFactor: 0.6,
                          ),
                        ],
                        showLabels: false,
                      ),
                    ],
                    title: const GaugeTitle(
                      text: '',
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
