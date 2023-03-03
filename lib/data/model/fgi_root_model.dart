// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'fgi_model.dart';

part 'fgi_root_model.freezed.dart';
part 'fgi_root_model.g.dart';

@freezed
class FgiRootModel with _$FgiRootModel {
  const factory FgiRootModel({
    @Default(FgiModel()) FgiModel fgi,
  }) = _FgiRootModel;

  const FgiRootModel._();

  factory FgiRootModel.fromJson(Map<String, dynamic> json) => _$FgiRootModelFromJson(json);
}
