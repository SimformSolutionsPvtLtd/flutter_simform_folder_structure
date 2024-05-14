import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:simform_folder_structure_example/repository/api_service.dart';
import 'package:simform_folder_structure_example/repository/auth_repository/models/auth_response.dart';

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
