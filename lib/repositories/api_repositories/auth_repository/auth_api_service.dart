import 'package:dio/dio.dart';
import 'package:flutter_simform_folder_structure/repositories/api_repositories/api_service.dart';
import 'package:flutter_simform_folder_structure/repositories/api_repositories/auth_repository/models/auth_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

// Any API calls related to user authentication and creation will come here.
// we are dividing these repositories basaed on modules so, if there is another
// module for posts, there will be separate library for post's APIs.
// All the request and response models will be stored in models folder.

@RestApi()
abstract class AuthApiService extends ApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @GET('/login')
  Future<LoginUser> login({
    @Query('username') required String username,
    @Query('password') required String password,
  });
}
