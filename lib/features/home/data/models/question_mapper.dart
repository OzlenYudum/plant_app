

import 'package:plant_app/features/home/data/models/question_model.dart';
import 'package:plant_app/features/home/domain/entities/question.dart';

extension QuestionMapper on QuestionModel {
  Question toEntity() {
    return Question(
      id: id,
      title: title,
      subtitle: subtitle,
      imageUrl: imageUri, // JSON'da "image_uri"
      link: uri,          // JSON'da "uri"
      order: order,
    );
  }
}
