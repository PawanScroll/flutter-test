import 'package:flutter/foundation.dart';

import 'package:stck_site/models/site.dart';

class ActiveSite with ChangeNotifier {
  Site? site;

  void setSite(Site s) {
      site = s;
      notifyListeners();
  }
}
