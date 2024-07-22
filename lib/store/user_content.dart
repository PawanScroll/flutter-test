import 'package:flutter/foundation.dart';

import 'package:stck_site/models/user.dart';

class ActiveUser with ChangeNotifier {
  User? user;

  void setUser(User s) {
    user = s;
    notifyListeners();
  }
}
