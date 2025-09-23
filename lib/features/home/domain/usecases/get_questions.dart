import '../entities/question.dart';
import '../repositories/home_repository.dart';

class GetQuestions {
  final HomeRepository repo;
  GetQuestions(this.repo);
  Future<List<Question>> call() => repo.getQuestions();
}
