// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../enum/fear_and_greed_index_enum.dart';

part 'now_fgi_value_model.freezed.dart';
part 'now_fgi_value_model.g.dart';

@freezed
class NowFgiValueModel with _$NowFgiValueModel {
  const factory NowFgiValueModel({
    @Default(50.0) double value,
    @Default(FearAndGreedIndexEnum.fear) FearAndGreedIndexEnum valueText,
  }) = _NowFgiValueModel;

  const NowFgiValueModel._();

  factory NowFgiValueModel.fromJson(Map<String, dynamic> json) => _$NowFgiValueModelFromJson(json);
}
