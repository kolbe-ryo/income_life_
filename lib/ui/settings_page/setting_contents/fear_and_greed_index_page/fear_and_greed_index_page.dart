// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:income_life/ui/common/app_colors.dart';
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
                            startWidth: 10,
                            endWidth: 10,
                          ),
                          GaugeRange(
                            startValue: 25,
                            endValue: 45,
                            color: FearAndGreedIndexEnum.fear.color,
                            startWidth: 10,
                            endWidth: 10,
                          ),
                          GaugeRange(
                            startValue: 45,
                            endValue: 55,
                            color: FearAndGreedIndexEnum.neutral.color,
                            startWidth: 10,
                            endWidth: 10,
                          ),
                          GaugeRange(
                            startValue: 55,
                            endValue: 75,
                            color: FearAndGreedIndexEnum.greed.color,
                            startWidth: 10,
                            endWidth: 10,
                          ),
                          GaugeRange(
                            startValue: 75,
                            endValue: 100,
                            color: FearAndGreedIndexEnum.extremeGreed.color,
                            startWidth: 10,
                            endWidth: 10,
                          )
                        ],
                        pointers: <GaugePointer>[
                          NeedlePointer(
                            value: currentGauge,
                            needleLength: 0.8,
                            needleStartWidth: 2,
                            needleEndWidth: 12,
                            gradient: const LinearGradient(
                              colors: <Color>[
                                AppColors.black,
                                AppColors.grey,
                                AppColors.grey,
                                AppColors.black,
                              ],
                              stops: <double>[0, 0.5, 0.5, 1],
                            ),
                            knobStyle: const KnobStyle(
                              color: AppColors.white,
                              knobRadius: 0.06,
                              borderColor: AppColors.darkGrey,
                              borderWidth: 0.05,
                            ),
                          ),
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
                    enableLoadingAnimation: true,
                    animationDuration: 5000,
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
