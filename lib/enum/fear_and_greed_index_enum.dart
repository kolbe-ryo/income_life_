// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../ui/common/app_colors.dart';

enum FearAndGreedIndexEnum {
  @JsonValue('Extreme Fear')
  extremeFear,
  @JsonValue('Fear')
  fear,
  @JsonValue('Neutral')
  neutral,
  @JsonValue('Greed')
  greed,
  @JsonValue('Extreme Greed')
  extremeGreed,
}

extension FearAndGreedIndexEnumExt on FearAndGreedIndexEnum {
  String get name {
    switch (this) {
      case FearAndGreedIndexEnum.extremeFear:
        return 'Extreme Fear';
      case FearAndGreedIndexEnum.fear:
        return 'Fear';
      case FearAndGreedIndexEnum.neutral:
        return 'Neutral';
      case FearAndGreedIndexEnum.greed:
        return 'Greed';
      case FearAndGreedIndexEnum.extremeGreed:
        return 'Extreme Greed';
    }
  }

  Color get color {
    switch (this) {
      case FearAndGreedIndexEnum.extremeFear:
        return AppColors.redAccent.shade700;
      case FearAndGreedIndexEnum.fear:
        return AppColors.redAccent;
      case FearAndGreedIndexEnum.neutral:
        return Colors.grey.shade200;
      case FearAndGreedIndexEnum.greed:
        return AppColors.teal.shade300;
      case FearAndGreedIndexEnum.extremeGreed:
        return AppColors.teal;
    }
  }
}
