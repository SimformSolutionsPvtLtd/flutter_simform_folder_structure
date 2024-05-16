// Chopper / Retrofit client setup and bind interceptor.
// Other API repo will extend this repo.

import 'package:dio/dio.dart';
import 'package:flutter_simform_folder_structure/repositories/api_repositories/api_service.dart';

abstract class ApiRepository<T extends ApiService> {
  late final Dio dio;

  ApiRepository(
      {required String url, Iterable<Interceptor> interceptors = const []}) {
    dio = Dio(BaseOptions(baseUrl: url));
    dio.interceptors.addAll(interceptors);
  }

  T? _service;

  T get service {
    _service ??= serviceFactory(dio);

    return _service!;
  }

  T serviceFactory(Dio dio);
}
