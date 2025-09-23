import 'package:freezed_annotation/freezed_annotation.dart';
import 'category_image_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime publishedAt,
    required String title,
    required int rank,
    required CategoryImageModel image,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
