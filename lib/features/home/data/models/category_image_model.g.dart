// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryImageModel _$CategoryImageModelFromJson(Map<String, dynamic> json) =>
    _CategoryImageModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      alternativeText: json['alternativeText'] as String?,
      caption: json['caption'] as String?,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      formats: json['formats'] as Map<String, dynamic>?,
      ext: json['ext'] as String,
      mime: json['mime'] as String,
      size: (json['size'] as num).toDouble(),
      url: json['url'] as String,
      previewUrl: json['previewUrl'] as String?,
      provider: json['provider'] as String,
      providerMetadata: json['providerMetadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CategoryImageModelToJson(_CategoryImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
      'formats': instance.formats,
      'ext': instance.ext,
      'mime': instance.mime,
      'size': instance.size,
      'url': instance.url,
      'previewUrl': instance.previewUrl,
      'provider': instance.provider,
      'providerMetadata': instance.providerMetadata,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
