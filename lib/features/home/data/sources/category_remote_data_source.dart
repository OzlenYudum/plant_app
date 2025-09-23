// lib/features/home/data/sources/category_remote_data_source.dart
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:plant_app/core/network/network_exceptions.dart';
import '../models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> fetchCategories({CancelToken? cancelToken});
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  CategoryRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  static const String _path = '/getCategories';

@override
Future<List<CategoryModel>> fetchCategories({CancelToken? cancelToken}) async {
  try {
    final res = await _dio.get(
      _path,
      cancelToken: cancelToken,
      options: Options(headers: {'Accept': 'application/json'}),
    );

    dynamic data = res.data;
    if (data is String) data = jsonDecode(data);

    if (data is! Map || data['data'] is! List) {
      throw const SerializationException('Unexpected categories response shape');
    }

    final list = (data['data'] as List)
        .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
        .toList()
      ..sort((a, b) => a.rank.compareTo(b.rank));

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