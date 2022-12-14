// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonsModel _$$_PersonsModelFromJson(Map<String, dynamic> json) =>
    _$_PersonsModel(
      totalPages: json['total_pages'] as int? ?? -1,
      totalResults: json['total_results'] as int? ?? -1,
      page: json['page'] as int? ?? -1,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PersonModel>[],
      params: PersonsGetParams.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PersonsModelToJson(_$_PersonsModel instance) =>
    <String, dynamic>{
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'page': instance.page,
      'results': instance.results.map((e) => e.toJson()).toList(),
      'params': instance.params.toJson(),
    };
