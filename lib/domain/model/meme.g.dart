// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meme _$MemeFromJson(Map<String, dynamic> json) => _Meme(
  id: json['id'] as String,
  name: json['name'] as String,
  url: json['url'] as String,
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  boxCount: (json['box_count'] as num).toInt(),
  captions: (json['captions'] as num).toInt(),
);

Map<String, dynamic> _$MemeToJson(_Meme instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'url': instance.url,
  'width': instance.width,
  'height': instance.height,
  'box_count': instance.boxCount,
  'captions': instance.captions,
};
