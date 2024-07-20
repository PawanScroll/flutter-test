import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Author with _$Author {
  const factory Author({
    required int id,
    required String bio,
    required String name,
    required String about,
    ImageSrc? avatar,
    required String country,
    required String currency,
  }) = _Author;

  factory Author.fromJson(Map<String, Object?> json) => _$AuthorFromJson(json);
}

@freezed
class PostMeta with _$PostMeta {
  const factory PostMeta({
    required Cover cover,
    Content? content,
  }) = _PostMeta;

  factory PostMeta.fromJson(Map<String, Object?> json) => _$PostMetaFromJson(json);
}

@freezed
class Cover with _$Cover {
  const factory Cover({
    @JsonKey(fromJson: _srcFromJson) Object? src,
    String? caption,
  }) = _Cover;

  factory Cover.fromJson(Map<String, Object?> json) => _$CoverFromJson(json);
}

Object? _srcFromJson(Object? json) {
  if (json is String) {
    return json;
  } else if (json is Map<String, dynamic>) {
    return ImageSrc.fromJson(json);
  }
  return null;
}


@freezed
class ImageSrc with _$ImageSrc {
  const factory ImageSrc({
    ImageMeta? meta,
    String? image,
    String? fallback,
  }) = _ImageSrc;

  factory ImageSrc.fromJson(Map<String, Object?> json) => _$ImageSrcFromJson(json);
}

@freezed
class ImageMeta with _$ImageMeta {
  const factory ImageMeta({
    required int width,
    required int height,
  }) = _ImageMeta;

  factory ImageMeta.fromJson(Map<String, Object?> json) => _$ImageMetaFromJson(json);
}


@freezed
class Content with _$Content {
  const factory Content({
    TextContent? text,
    AudioContent? audio,
    int? duration,
  }) = _Content;

  factory Content.fromJson(Map<String, Object?> json) => _$ContentFromJson(json);
}


@freezed
class TextContent with _$TextContent {
  const factory TextContent({
    required int wc,
    required int duration,
  }) = _TextContent;

  factory TextContent.fromJson(Map<String, Object?> json) => _$TextContentFromJson(json);
}


@freezed
class AudioContent with _$AudioContent {
  const factory AudioContent({
    required int count,
    required int duration,
  }) = _AudioContent;

  factory AudioContent.fromJson(Map<String, Object?> json) => _$AudioContentFromJson(json);
}

@freezed
class Pricing with _$Pricing {
  const factory Pricing({
    // ignore: non_constant_identifier_names
    int? USD,
    // ignore: non_constant_identifier_names
    int? INR,
    // ignore: non_constant_identifier_names
    int? EUR,
  }) = _Pricing;

  factory Pricing.fromJson(Map<String, Object?> json) => _$PricingFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    required String title,
    @JsonKey(name: 'site_id') required int siteId,
    @JsonKey(name: 'author_id') required int authorId,
    required Author author,
    @JsonKey(name: 'parent_id') int? parentId,
    required String permalink,
    required String published,
    required String updated,
    required int index,
    required String summary,
    required String language,
    @Default([]) List tags,
    required PostMeta meta,
    required int visibility,
    @Default({}) pricing,
    required String ptype,
    required String subtype,
    required int access,
    required int likes,
    String? content,
    @JsonKey(name: 'comments_count') required int commentsCount,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
