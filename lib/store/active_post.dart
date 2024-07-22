import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:stck_site/models/post.dart';
import 'package:stck_site/models/comment.dart';
import 'package:stck_site/utils/constants.dart';

class ActivePost with ChangeNotifier, DiagnosticableTreeMixin {
  Post? post;
  List<Comment> comments = [];
  var isError = false;
  var isLoading = false;

  static BaseOptions options = BaseOptions(baseUrl: baseApi);

  Dio dio = Dio(options);

  Future<void> getPost(int siteId, int id) async {
    try {
      isLoading = true;
      var resp = await dio.get('/api/r/$siteId/posts/$id');
      post = Post.fromJson(resp.data);
      await getComments(siteId, id);
    } catch (err) {
      isError = true;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getComments(int siteId, int postId) async {
    try {
      var resp = await dio.get('/api/w/sites/$siteId/posts/$postId/comments');
      comments = (resp.data as List<dynamic>)
          .map((comment) => Comment.fromJson(comment as Map<String, dynamic>))
          .toList();
    } catch (err) {
      isError = true;
    } finally {
      notifyListeners();
    }
  }

  Future<void> likePost(int? sid, int? pid) async {
    try {
      await dio.post('/api/w/$sid/posts/$pid/like');
      await getPost(sid ?? 0, pid ?? 0);
    } catch (err) {
      print(err);
    } finally {
      notifyListeners();
    }
  }
}
