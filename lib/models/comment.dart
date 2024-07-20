import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import './site.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int id,
    required String created,
    @JsonKey(name: 'site_id') required int siteId,
    @JsonKey(name: 'post_id') required int postId,
    @JsonKey(name: 'block_id') int? blockId,
    required Commenter commenter,
    @JsonKey(name: 'commenter_id') required int commenterId,
    required String content,
    @JsonKey(name: 'parent_id') int? parentId,
    required int status,
    List<Comment>? replies,
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json) =>
      _$CommentFromJson(json);
}

@freezed
class Commenter with _$Commenter {
  const factory Commenter({
    required int id,
    required String name,
    Avatar? avatar,
    String? domain,
    List<String>? tags,
  }) = _Commenter;

  factory Commenter.fromJson(Map<String, Object?> json) =>
      _$CommenterFromJson(json);
}
