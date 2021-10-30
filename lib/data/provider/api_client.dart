import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

// part 'api_client.g.dart';

@RestApi(baseUrl: 'https://test.api.employee.safia.udevs.io')
abstract class ApiClient {
  static Alice alice = Alice(
    showNotification: true,
    showInspectorOnShake: false,
    darkTheme: false,
  );

  static CancelToken cancelToken = CancelToken();
/*
  factory ApiClient(Dio dio, CancelToken cancelToken, String baseUrl) {
    dio.options = BaseOptions(receiveTimeout: 30000, connectTimeout: 30000);
    dio.interceptors.add(LogInterceptor(responseBody: true));
    dio.interceptors.add(alice.getDioInterceptor());

   *//* dio.options.headers = {
      "platform-id": AppConstants.kPlatformId,
      "Authorization": "${'token'}",
    };*//*

    return _ApiClient(dio, baseUrl: baseUrl);
  }
  */
}
