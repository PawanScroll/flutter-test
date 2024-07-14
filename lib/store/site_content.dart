import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:stck_site/models/post.dart';

const baseSite = 'https://api.scrollstack.net';

class SiteContent with ChangeNotifier {
  List<Post> posts = [];
  var isError = false;
  var isLoading = false;

  static BaseOptions options = BaseOptions(baseUrl: baseSite);

  Dio dio = Dio(options);

  Future<void> getPosts(int id) async {
    try {
      isLoading = true;
      var resp = await dio.get('/api/r/$id/posts?ptype=blog');
      posts = (resp.data as List<dynamic>)
          .map((post) => Post.fromJson(post as Map<String, dynamic>))
          .toList();
    } catch (err) {
      isError = true;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
