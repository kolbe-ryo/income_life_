// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../enum/fear_and_greed_index_enum.dart';

part 'fear_and_greed_index_state.freezed.dart';

@freezed
class FearAndGreedIndexState with _$FearAndGreedIndexState {
  const factory FearAndGreedIndexState({
    @Default(FearAndGreedIndexEnum.neutral) FearAndGreedIndexEnum indexEnum,
    @Default(50.0) double value,
    @Default(true) bool isLoading,
  }) = _FearAndGreedIndexState;

  const FearAndGreedIndexState._();

  Color get colorFromValue {
    if (value < 25.0) {
      return FearAndGreedIndexEnum.extremeFear.color;
    } else if (value < 45.0) {
      return FearAndGreedIndexEnum.fear.color;
    } else if (value < 55.0) {
      return FearAndGreedIndexEnum.neutral.color;
    } else if (value < 75.0) {
      return FearAndGreedIndexEnum.greed.color;
    } else {
      return FearAndGreedIndexEnum.extremeGreed.color;
    }
  }
}
