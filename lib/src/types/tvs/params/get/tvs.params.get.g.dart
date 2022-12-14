// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tvs.params.get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVsGetParams _$$_TVsGetParamsFromJson(Map<String, dynamic> json) =>
    _$_TVsGetParams(
      group: $enumDecodeNullable(_$TVsGroupEnumMap, json['group']) ??
          TVsGroup.topRated,
      language: json['language'] as String? ?? 'en-US',
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$$_TVsGetParamsToJson(_$_TVsGetParams instance) =>
    <String, dynamic>{
      'group': _$TVsGroupEnumMap[instance.group]!,
      'language': instance.language,
      'page': instance.page,
    };

const _$TVsGroupEnumMap = {
  TVsGroup.airingToday: 'airingToday',
  TVsGroup.onTheAir: 'onTheAir',
  TVsGroup.popular: 'popular',
  TVsGroup.topRated: 'topRated',
};
