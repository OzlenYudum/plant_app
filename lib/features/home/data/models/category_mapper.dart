import 'package:plant_app/features/home/data/models/category_model.dart';
import 'package:plant_app/features/home/domain/entities/category.dart';

extension CategoryMapper on CategoryModel {
  Category toEntity() {
    return Category(
      id: id,
      name: name,       // doğrudan API’den gelen "name"
      title: title,
      rank: rank,
      imageUrl: image.url,
    );
  }
}