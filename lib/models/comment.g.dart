// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: (json['id'] as num).toInt(),
      created: json['created'] as String,
      siteId: (json['site_id'] as num).toInt(),
      postId: (json['post_id'] as num).toInt(),
      blockId: (json['block_id'] as num?)?.toInt(),
      commenter: Commenter.fromJson(json['commenter'] as Map<String, dynamic>),
      commenterId: (json['commenter_id'] as num).toInt(),
      content: json['content'] as String,
      parentId: (json['parent_id'] as num?)?.toInt(),
      status: (json['status'] as num).toInt(),
      replies: (json['replies'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'site_id': instance.siteId,
      'post_id': instance.postId,
      'block_id': instance.blockId,
      'commenter': instance.commenter,
      'commenter_id': instance.commenterId,
      'content': instance.content,
      'parent_id': instance.parentId,
      'status': instance.status,
      'replies': instance.replies,
    };

_$CommenterImpl _$$CommenterImplFromJson(Map<String, dynamic> json) =>
    _$CommenterImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      avatar: json['avatar'] == null
          ? null
          : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
      domain: json['domain'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CommenterImplToJson(_$CommenterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'domain': instance.domain,
      'tags': instance.tags,
    };
