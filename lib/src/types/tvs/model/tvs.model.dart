import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../tv/model/tv.model.dart';
import '../params/get/tvs.params.get.dart';

part 'tvs.model.freezed.dart';
part 'tvs.model.g.dart';

@freezed
class TVsModel with _$TVsModel {
  factory TVsModel({
    @JsonKey(name: 'total_pages') @Default(-1) int totalPages,
    @JsonKey(name: 'total_results') @Default(-1) int totalResults,
    @Default(-1) int page,
    @Default(<TVModel>[]) List<TVModel> results,
    required TVsGetParams params,
  }) = _TVsModel;

  factory TVsModel.fromJson(Map<String, dynamic> json) =>
      _$TVsModelFromJson(json);
}
