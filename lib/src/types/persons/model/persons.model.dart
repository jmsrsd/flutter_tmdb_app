import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../person/model/person.model.dart';
import '../params/get/persons.params.get.dart';

part 'persons.model.freezed.dart';
part 'persons.model.g.dart';

@freezed
class PersonsModel with _$PersonsModel {
  factory PersonsModel({
    @JsonKey(name: 'total_pages') @Default(-1) int totalPages,
    @JsonKey(name: 'total_results') @Default(-1) int totalResults,
    @Default(-1) int page,
    @Default(<PersonModel>[]) List<PersonModel> results,
    required PersonsGetParams params,
  }) = _PersonsModel;

  factory PersonsModel.fromJson(Map<String, dynamic> json) =>
      _$PersonsModelFromJson(json);
}
