import 'package:dio/dio.dart';
import 'package:flutter_simform_folder_structure/repositories/api_repositories/api_repository.dart';
import 'package:flutter_simform_folder_structure/repositories/api_repositories/auth_repository/auth_api_service.dart';
import 'package:flutter_simform_folder_structure/repositories/api_repositories/auth_repository/models/auth_request.dart';
import 'package:flutter_simform_folder_structure/repositories/api_repositories/auth_repository/models/auth_response.dart';

class AuthRepositories extends ApiRepository<AuthApiService> {
  AuthRepositories({required super.url});

  @override
  AuthApiService serviceFactory(Dio dio) => AuthApiService(dio);

  Future<LoginUser> login(AuthRequest request) {
    return service.login(
      username: request.username,
      password: request.password,
    );
  }
}
