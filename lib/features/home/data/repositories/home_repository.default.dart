// lib/features/home/data/repositories/home_repository.default.dart
import 'package:plant_app/features/home/data/sources/category_remote_data_source.dart';
import 'package:plant_app/features/home/data/sources/question_remote_data_souce.dart';

import '../../domain/entities/category.dart';
import '../../domain/entities/question.dart';
import '../../domain/repositories/home_repository.dart';
import '../models/category_mapper.dart';
import '../models/question_mapper.dart';

class DefaultHomeRepository implements HomeRepository {
  DefaultHomeRepository(this._categoryDs, this._questionDs);
  final CategoryRemoteDataSource _categoryDs;
  final QuestionRemoteDataSource _questionDs;

  @override
  Future<List<Category>> getCategories() async {
    final dtos = await _categoryDs.fetchCategories();
    return dtos.map((m) => m.toEntity()).toList();
  }

  @override
  Future<List<Question>> getQuestions() async {
    final dtos = await _questionDs.fetchQuestions();
    return dtos.map((m) => m.toEntity()).toList();
  }
}