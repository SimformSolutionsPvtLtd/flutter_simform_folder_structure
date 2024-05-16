import 'package:dio/dio.dart';
import 'package:flutter_simform_folder_structure/repositories/api_repositories/api_service.dart';
import 'package:flutter_simform_folder_structure/repositories/api_repositories/auth_repository/models/auth_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService extends ApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @GET('/login')
  Future<LoginUser> login({
    @Query('username') required String username,
    @Query('password') required String password,
  });
}
