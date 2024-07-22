import 'package:flutter/foundation.dart';

import 'package:stck_site/models/user.dart';
import 'package:stck_site/utils/apiclient.dart';
import 'package:stck_site/utils/cookie.dart';

class AuthStore extends ChangeNotifier {
  User? user;
  bool _isLoading = false;
  String? _error;

  bool get isLoading => _isLoading;
  String? get error => _error;

  void setUser(User s) {
    user = s;
    notifyListeners();
  }

  void clearUser() {
    user = null;
    notifyListeners();
  }

  Future<void> signIn(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      _error = 'Email and password cannot be empty';
      notifyListeners();
    }
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await dio.post(
        '/api/w/signin',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        await CookieManager.saveCookie('session', response.data);
        await initializeSession();
        await fetchAndSetUser();
      } else {
        _error = 'Sign-in failed. Please try again.';
      }
    } catch (e) {
      _error =
          'An error occurred. Please check your connection and try again. ${e.toString()}';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchAndSetUser() async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      // Retrieve the session cookie
      final sessionCookie = await CookieManager.getCookie('session');
      if (sessionCookie == null) {
        return;
      }
      // Make the API call to fetch user data
      final response = await dio.get('/api/w/sites/326/me');
      if (response.statusCode == 200) {
        final User user = User.fromJson(response.data);
        setUser(user);
      } else {
        _error = 'Failed to fetch user data';
      }
    } catch (e) {
      _error = 'An error occurred while fetching user data: ${e.toString()}';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    await CookieManager.removeCookie('session');
    await resetSession();
    clearUser();
  }
}
