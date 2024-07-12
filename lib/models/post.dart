class Author {
  final int id;
  final String bio;
  final String name;
  final String about;
  final Map<String, dynamic> avatar;
  final String country;
  final String currency;

  Author({
    required this.id,
    required this.bio,
    required this.name,
    required this.about,
    required this.avatar,
    required this.country,
    required this.currency,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      id: json['id'],
      bio: json['bio'],
      name: json['name'],
      about: json['about'],
      avatar: json['avatar'],
      country: json['country'],
      currency: json['currency'],
    );
  }
}

class PostMeta {
  final Cover cover;
  final List<Post> children;

  PostMeta({required this.cover, required this.children});

  factory PostMeta.fromJson(Map<String, dynamic> json) {
    var childrenList = json['children'] as List<dynamic>? ?? [];
    List<Post> children = childrenList.map((i) => Post.fromJson(i)).toList();

    return PostMeta(
      cover: Cover.fromJson(json['cover']),
      children: children,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cover': cover.toJson(),
      'children': children.map((child) => child.toJson()).toList(),
    };
  }
}

class Cover {
  final ImageSrc? src;
  final String? caption;

  Cover({required this.src, required this.caption});

  factory Cover.fromJson(Map<String, dynamic> json) {
    ImageSrc? src;
    if (json['src'] != null && json['src'] is Map<String, dynamic>) {
      src = ImageSrc.fromJson(json['src']);
    }

    return Cover(
      src: src,
      caption: json['caption'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'src': src?.toJson(),
      'caption': caption,
    };
  }
}

class ImageSrc {
  final ImageMeta? meta;
  final String? image;
  final String? fallback;

  ImageSrc({required this.meta, required this.image, required this.fallback});

  factory ImageSrc.fromJson(Map<String, dynamic> json) {
    return ImageSrc(
      meta: json['meta'] != null ? ImageMeta.fromJson(json['meta']) : null,
      image: json['image'] ?? '',
      fallback: json['fallback'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta?.toJson(),
      'image': image,
      'fallback': fallback,
    };
  }
}

class ImageMeta {
  final String width;
  final String height;

  ImageMeta({required this.width, required this.height});

  factory ImageMeta.fromJson(Map<String, dynamic> json) {
    return ImageMeta(
      width: json['width']?.toString() ?? '',
      height: json['height']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'width': width,
      'height': height,
    };
  }
}

class Content {
  final TextContent? text;
  final AudioContent? audio;
  final int? duration;

  Content({required this.text, required this.audio, required this.duration});

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      text: json['text'] != null ? TextContent.fromJson(json['text']): null,
      audio: json['audio'] != null ? AudioContent.fromJson(json['audio']): null,
      duration: json['duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text?.toJson(),
      'audio': audio?.toJson(),
      'duration': duration,
    };
  }
}

class TextContent {
  final int wc;
  final int duration;

  TextContent({required this.wc, required this.duration});

  factory TextContent.fromJson(Map<String, dynamic> json) {
    return TextContent(
      wc: json['wc'],
      duration: json['duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'wc': wc,
      'duration': duration,
    };
  }
}

class AudioContent {
  final int count;
  final int duration;

  AudioContent({required this.count, required this.duration});

  factory AudioContent.fromJson(Map<String, dynamic> json) {
    return AudioContent(
      count: json['count'],
      duration: json['duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'duration': duration,
    };
  }
}

class Pricing {
  Pricing();

  factory Pricing.fromJson(Map<String, dynamic> json) {
    return Pricing();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}


class Post {
  final int id;
  final String title;
  final int siteId;
  final int authorId;
  final Author author;
  final int? parentId;
  final String permalink;
  final String published;
  final String updated;
  final int index;
  final String summary;
  final String language;
  final List tags;
  final PostMeta meta;
  final int visibility;
  final Pricing pricing;
  final String ptype;
  final String subtype;
  final int access;
  final int likes;
  final String? content;
  final int commentsCount;

  Post({
    required this.id,
    required this.title,
    required this.siteId,
    required this.authorId,
    required this.author,
    this.parentId,
    this.content,
    required this.permalink,
    required this.published,
    required this.updated,
    required this.index,
    required this.summary,
    required this.language,
    required this.tags,
    required this.meta,
    required this.visibility,
    required this.pricing,
    required this.ptype,
    required this.subtype,
    required this.access,
    required this.likes,
    required this.commentsCount,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      siteId: json['site_id'],
      authorId: json['author_id'],
      author: Author.fromJson(json['author']),
      parentId: json['parent_id'],
      permalink: json['permalink'],
      published: json['published'],
      updated: json['updated'],
      index: json['index'],
      summary: json['summary'],
      language: json['language'],
      tags: json['tags'],
      meta: PostMeta.fromJson(json['meta']),
      visibility: json['visibility'],
      pricing: Pricing.fromJson(json['pricing']),
      ptype: json['ptype'],
      subtype: json['subtype'],
      access: json['access'],
      likes: json['likes'],
      content: json['content'],
      commentsCount: json['comments_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'meta': meta.toJson(),
      'ptype': ptype,
      'title': title,
      'pricing': pricing.toJson(),
      'site_id': siteId,
      'subtype': subtype,
      'parent_id': parentId,
      'permalink': permalink,
      'visibility': visibility,
    };
  }
}
