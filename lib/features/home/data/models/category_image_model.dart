import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_image_model.freezed.dart';
part 'category_image_model.g.dart';

@freezed
abstract class CategoryImageModel with _$CategoryImageModel {
  const factory CategoryImageModel({
    required int id,
    required String name,
     String? alternativeText,
    String? caption,
    required int width,
    required int height,
    Map<String, dynamic>? formats,   // null gelebilir → nullable + Map
    required String ext,
    required String mime,
    required double size,
    required String url,
    String? previewUrl,
    required String provider,
    Map<String, dynamic>? providerMetadata,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CategoryImageModel;

  factory CategoryImageModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryImageModelFromJson(json);
}
