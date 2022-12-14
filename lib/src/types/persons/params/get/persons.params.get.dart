import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../persons.group.dart';

part 'persons.params.get.freezed.dart';
part 'persons.params.get.g.dart';

@freezed
class PersonsGetParams with _$PersonsGetParams {
  factory PersonsGetParams({
    @Default(PersonsGroup.popular) PersonsGroup group,
    @Default('en-US') String language,
    @Default(1) int page,
  }) = _PersonsGetParams;

  factory PersonsGetParams.fromJson(Map<String, dynamic> json) =>
      _$PersonsGetParamsFromJson(json);
}
