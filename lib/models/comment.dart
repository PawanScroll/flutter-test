import './site.dart';

class Comment {
  final int id;
  final String created;
  final int siteId;
  final int postId;
  final int? blockId;
  final Commenter commenter;
  final int commenterId;
  final String content;
  final int parentId;
  final int status;
  final List<Comment> replies;

  Comment({
    required this.id,
    required this.created,
    required this.siteId,
    required this.postId,
    required this.blockId,
    required this.commenter,
    required this.commenterId,
    required this.content,
    required this.parentId,
    required this.status,
    required this.replies,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      created: json['created'],
      siteId: json['site_id'],
      postId: json['post_id'],
      blockId: json['block_id'],
      commenter: Commenter.fromJson(json['commenter']),
      commenterId: json['commenter_id'],
      content: json['content'],
      parentId: json['parent_id'],
      status: json['status'],
      replies: (json['replies'] as List<dynamic>)
          .map((e) => Comment.fromJson(e))
          .toList(),
    );
  }
}

class Commenter {
  final int id;
  final String name;
  final String domain;
  final List<String> tags;
  final Avatar avatar;

  Commenter({
    required this.id,
    required this.name,
    required this.domain,
    required this.tags,
    required this.avatar,
  });

  factory Commenter.fromJson(Map<String, dynamic> json) {
    return Commenter(
      id: json['id'],
      name: json['name'],
      domain: json['domain'],
      tags: List<String>.from(json['tags']),
      avatar: Avatar.fromJson(json['avatar']),
    );
  }
}
