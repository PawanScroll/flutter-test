import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:stck_site/models/post.dart';

const baseApi = 'https://api.scrollstack.net';

class ActivePost with ChangeNotifier, DiagnosticableTreeMixin {
  Post? post;
  var isError = false;
  var isLoading = false;

  static BaseOptions options = BaseOptions(baseUrl: baseApi);

  Dio dio = Dio(options);

  Future<void> getPost(int id) async {
    try {
      isLoading = true;
      var resp = await dio.get('/api/r/2/posts/$id');

      post = Post.fromJson(resp.data);

    } catch (err) {
      isError = true;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
