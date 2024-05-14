// Chopper / Retrofit client setup and bind interceptor.
// Other API repo will extend this repo.

import 'package:dio/dio.dart';
import 'package:simform_folder_structure_example/repository/api_service.dart';

abstract class NetworkRepository<T extends ApiService> {
  late final Dio dio;

  NetworkRepository(
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
