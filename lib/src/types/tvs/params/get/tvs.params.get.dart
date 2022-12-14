import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../tvs.group.dart';

part 'tvs.params.get.freezed.dart';
part 'tvs.params.get.g.dart';

@freezed
class TVsGetParams with _$TVsGetParams {
  factory TVsGetParams({
    @Default(TVsGroup.topRated) TVsGroup group,
    @Default('en-US') String language,
    @Default(1) int page,
  }) = _TVsGetParams;

  factory TVsGetParams.fromJson(Map<String, dynamic> json) =>
      _$TVsGetParamsFromJson(json);
}
