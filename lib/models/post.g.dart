// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      id: (json['id'] as num).toInt(),
      bio: json['bio'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      avatar: json['avatar'] == null
          ? null
          : ImageSrc.fromJson(json['avatar'] as Map<String, dynamic>),
      country: json['country'] as String,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bio': instance.bio,
      'name': instance.name,
      'about': instance.about,
      'avatar': instance.avatar,
      'country': instance.country,
      'currency': instance.currency,
    };

_$PostMetaImpl _$$PostMetaImplFromJson(Map<String, dynamic> json) =>
    _$PostMetaImpl(
      cover: Cover.fromJson(json['cover'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostMetaImplToJson(_$PostMetaImpl instance) =>
    <String, dynamic>{
      'cover': instance.cover,
      'content': instance.content,
    };

_$CoverImpl _$$CoverImplFromJson(Map<String, dynamic> json) => _$CoverImpl(
      src: _srcFromJson(json['src']),
      caption: json['caption'] as String?,
    );

Map<String, dynamic> _$$CoverImplToJson(_$CoverImpl instance) =>
    <String, dynamic>{
      'src': instance.src,
      'caption': instance.caption,
    };

_$ImageSrcImpl _$$ImageSrcImplFromJson(Map<String, dynamic> json) =>
    _$ImageSrcImpl(
      meta: json['meta'] == null
          ? null
          : ImageMeta.fromJson(json['meta'] as Map<String, dynamic>),
      image: json['image'] as String?,
      fallback: json['fallback'] as String?,
    );

Map<String, dynamic> _$$ImageSrcImplToJson(_$ImageSrcImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'image': instance.image,
      'fallback': instance.fallback,
    };

_$ImageMetaImpl _$$ImageMetaImplFromJson(Map<String, dynamic> json) =>
    _$ImageMetaImpl(
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$$ImageMetaImplToJson(_$ImageMetaImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      text: json['text'] == null
          ? null
          : TextContent.fromJson(json['text'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : AudioContent.fromJson(json['audio'] as Map<String, dynamic>),
      duration: (json['duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'audio': instance.audio,
      'duration': instance.duration,
    };

_$TextContentImpl _$$TextContentImplFromJson(Map<String, dynamic> json) =>
    _$TextContentImpl(
      wc: (json['wc'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$$TextContentImplToJson(_$TextContentImpl instance) =>
    <String, dynamic>{
      'wc': instance.wc,
      'duration': instance.duration,
    };

_$AudioContentImpl _$$AudioContentImplFromJson(Map<String, dynamic> json) =>
    _$AudioContentImpl(
      count: (json['count'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$$AudioContentImplToJson(_$AudioContentImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'duration': instance.duration,
    };

_$PricingImpl _$$PricingImplFromJson(Map<String, dynamic> json) =>
    _$PricingImpl(
      USD: (json['USD'] as num?)?.toInt(),
      INR: (json['INR'] as num?)?.toInt(),
      EUR: (json['EUR'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PricingImplToJson(_$PricingImpl instance) =>
    <String, dynamic>{
      'USD': instance.USD,
      'INR': instance.INR,
      'EUR': instance.EUR,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      siteId: (json['site_id'] as num).toInt(),
      authorId: (json['author_id'] as num).toInt(),
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      parentId: (json['parent_id'] as num?)?.toInt(),
      permalink: json['permalink'] as String,
      published: json['published'] as String,
      updated: json['updated'] as String,
      index: (json['index'] as num).toInt(),
      summary: json['summary'] as String,
      language: json['language'] as String,
      tags: json['tags'] as List<dynamic>? ?? const [],
      meta: PostMeta.fromJson(json['meta'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num).toInt(),
      pricing: json['pricing'] ?? const {},
      ptype: json['ptype'] as String,
      subtype: json['subtype'] as String,
      access: (json['access'] as num).toInt(),
      likes: (json['likes'] as num).toInt(),
      content: json['content'] as String?,
      commentsCount: (json['comments_count'] as num).toInt(),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'site_id': instance.siteId,
      'author_id': instance.authorId,
      'author': instance.author,
      'parent_id': instance.parentId,
      'permalink': instance.permalink,
      'published': instance.published,
      'updated': instance.updated,
      'index': instance.index,
      'summary': instance.summary,
      'language': instance.language,
      'tags': instance.tags,
      'meta': instance.meta,
      'visibility': instance.visibility,
      'pricing': instance.pricing,
      'ptype': instance.ptype,
      'subtype': instance.subtype,
      'access': instance.access,
      'likes': instance.likes,
      'content': instance.content,
      'comments_count': instance.commentsCount,
    };
