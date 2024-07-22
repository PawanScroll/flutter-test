import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:stck_site/models/post.dart';

class FeaturedPosts with ChangeNotifier {
  List<Post> posts = [];

  Dio dio = Dio();

  Future<void> getPosts() async {
    try {
      var resp = await dio.get('https://stck.me/api/r/featured/posts?page=1');

      posts = (resp.data as List<dynamic>)
          .map((post) => Post.fromJson(post as Map<String, dynamic>))
          .toList();
    } catch (err) {
      print(err);
    } finally {
      notifyListeners();
    }
  }
}