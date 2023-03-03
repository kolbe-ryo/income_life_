// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'now_fgi_value_model.dart';

part 'fgi_model.freezed.dart';
part 'fgi_model.g.dart';

@freezed
class FgiModel with _$FgiModel {
  const factory FgiModel({
    @Default(NowFgiValueModel()) NowFgiValueModel now,
  }) = _FgiModel;

  const FgiModel._();

  factory FgiModel.fromJson(Map<String, dynamic> json) => _$FgiModelFromJson(json);
}
