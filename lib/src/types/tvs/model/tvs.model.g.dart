// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tvs.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVsModel _$$_TVsModelFromJson(Map<String, dynamic> json) => _$_TVsModel(
      totalPages: json['total_pages'] as int? ?? -1,
      totalResults: json['total_results'] as int? ?? -1,
      page: json['page'] as int? ?? -1,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => TVModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TVModel>[],
      params: TVsGetParams.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TVsModelToJson(_$_TVsModel instance) =>
    <String, dynamic>{
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'page': instance.page,
      'results': instance.results.map((e) => e.toJson()).toList(),
      'params': instance.params.toJson(),
    };
