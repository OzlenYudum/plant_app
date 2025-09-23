// lib/features/home/data/sources/question_remote_data_source.dart
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:plant_app/core/network/network_exceptions.dart';
import '../models/question_model.dart';

abstract class QuestionRemoteDataSource {
  Future<List<QuestionModel>> fetchQuestions({CancelToken? cancelToken});
}

class QuestionRemoteDataSourceImpl implements QuestionRemoteDataSource {
  QuestionRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  static const String _path = '/getQuestions';

@override
Future<List<QuestionModel>> fetchQuestions({CancelToken? cancelToken}) async {
  try {
    final res = await _dio.get(
      _path,
      cancelToken: cancelToken,
      options: Options(headers: {'Accept': 'application/json'}),
    );

    dynamic data = res.data;
    if (data is String) data = jsonDecode(data);

    if (data is! List) {
      throw const SerializationException('Unexpected questions response shape');
    }

    final list = data
        .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
        .toList()
      ..sort((a, b) => a.order.compareTo(b.order));

    return list;
  } on DioException catch (e) {
    final err = e.error;
    if (err is NetworkException) throw err; // mapped by interceptor
    throw const UnknownNetworkException();
  } on FormatException {
    throw const SerializationException();
  } catch (_) {
    throw const SerializationException();
  }
}
}