import 'package:dio/dio.dart';
import 'package:stck_site/utils/cookie.dart';
import 'package:stck_site/utils/constants.dart';

BaseOptions options = BaseOptions(baseUrl: baseApi);

final Dio dio = Dio(options);

Future<void> initializeSession() async {
  final sessionCookie = await CookieManager.getCookie('session');
  if (sessionCookie != null) {
    dio.options.headers['Authorization'] = sessionCookie;
  }
}

Future<void> resetSession() async {
  dio.options.headers['Authorization'] = '';
}
