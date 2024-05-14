import 'package:dio/dio.dart';
import 'package:simform_folder_structure_example/repository/auth_repository/auth_api_service.dart';
import 'package:simform_folder_structure_example/repository/auth_repository/models/auth_request.dart';
import 'package:simform_folder_structure_example/repository/auth_repository/models/auth_response.dart';
import 'package:simform_folder_structure_example/repository/network_repository.dart';

class AuthRepository extends NetworkRepository<AuthApiService> {
  AuthRepository({required super.url});

  @override
  AuthApiService serviceFactory(Dio dio) => AuthApiService(dio);

  Future<LoginUser> login(AuthRequest request) {
    return service.login(
      username: request.username,
      password: request.password,
    );
  }
}
