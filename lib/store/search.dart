import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:stck_site/models/site.dart';

const baseApi = 'https://scrollstack.net';

class SearchStore with ChangeNotifier, DiagnosticableTreeMixin {
  List<Site> sites = [];
  var isError = false;
  var isLoading = false;

  static BaseOptions options = BaseOptions(baseUrl: baseApi);

  Dio dio = Dio(options);

  Future<void> search(String query) async {
    try {
      isLoading = true;
      var resp = await dio.get('/api/sr/accounts?query=$query');
      sites = (resp.data['records'] as List<dynamic>)
          .map((post) => Site.fromJson(post as Map<String, dynamic>))
          .toList();

    } catch (err) {
      isError = true;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
