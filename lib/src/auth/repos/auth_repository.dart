import 'package:dio/dio.dart';

class AuthRepository {
  Dio dio;

  AuthRepository({required this.dio});

  Future<dynamic> getUser() async {
    try {
      final d = await dio.get("https://dummyjson.com/users");
      return d.data['users'];
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
