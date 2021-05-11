import 'package:dio/dio.dart';
Future<Dio> httpClient({ignoreToken = false}) async {
  try {
    Dio dio = Dio();
    
    return dio;
  } catch (er) {
    {
      return er;
    }
  }
}
