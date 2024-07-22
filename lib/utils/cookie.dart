import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class CookieManager {
  static const String _cookieKey = 'app_cookies';

  static Future<void> saveCookie(String name, String value) async {
    final prefs = await SharedPreferences.getInstance();
    final cookies = prefs.getString(_cookieKey) ?? '{}';
    final cookieMap = json.decode(cookies) as Map<String, dynamic>;

    cookieMap[name] = value;

    await prefs.setString(_cookieKey, json.encode(cookieMap));
  }

  static Future<String?> getCookie(String name) async {
    final prefs = await SharedPreferences.getInstance();
    final cookies = prefs.getString(_cookieKey) ?? '{}';
    final cookieMap = json.decode(cookies) as Map<String, dynamic>;

    return cookieMap[name] as String?;
  }

  static Future<void> removeCookie(String name) async {
    final prefs = await SharedPreferences.getInstance();
    final cookies = prefs.getString(_cookieKey) ?? '{}';
    final cookieMap = json.decode(cookies) as Map<String, dynamic>;

    cookieMap.remove(name);

    await prefs.setString(_cookieKey, json.encode(cookieMap));
  }

  static Future<void> clearAllCookies() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_cookieKey);
  }
}
