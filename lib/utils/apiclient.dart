import 'package:dio/dio.dart';
import 'package:stck_site/utils/cookie.dart';

final Dio dio = Dio();

Future<void> initializeSession() async {
  final sessionCookie = await CookieManager.getCookie('session');
  if (sessionCookie != null) {
    dio.options.headers['Authorization'] = sessionCookie;
  }
}

Future<void> resetSession() async {
  dio.options.headers['Authorization'] = '';
}
