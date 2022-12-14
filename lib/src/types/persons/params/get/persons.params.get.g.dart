// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons.params.get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonsGetParams _$$_PersonsGetParamsFromJson(Map<String, dynamic> json) =>
    _$_PersonsGetParams(
      group: $enumDecodeNullable(_$PersonsGroupEnumMap, json['group']) ??
          PersonsGroup.popular,
      language: json['language'] as String? ?? 'en-US',
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$$_PersonsGetParamsToJson(_$_PersonsGetParams instance) =>
    <String, dynamic>{
      'group': _$PersonsGroupEnumMap[instance.group]!,
      'language': instance.language,
      'page': instance.page,
    };

const _$PersonsGroupEnumMap = {
  PersonsGroup.popular: 'popular',
};
