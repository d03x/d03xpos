import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:dio/dio.dart";

final dioClientProvider = Provider<Dio>((ref) {
  final dio = Dio();
  dio.options.baseUrl = "https://google.com";
  dio.options.connectTimeout = const Duration(seconds: 10); // Timeout connect
  dio.options.receiveTimeout = const Duration(seconds: 10); // Timeout baca data
  dio.options.headers = {
    'Accept': 'application/json', // Wajib untuk Laravel
    'Content-Type': 'application/json',
  };
  return dio;
});
