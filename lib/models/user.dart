class User {
  final String about;
  final Avatar avatar;
  final String bio;
  final String country;
  final String created;
  final String currency;
  final String? customDomain;
  final String domain;
  final List<int> groups;
  final int id;
  final String name;

  User({
    required this.about,
    required this.avatar,
    required this.bio,
    required this.country,
    required this.created,
    required this.currency,
    this.customDomain,
    required this.domain,
    required this.groups,
    required this.id,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      about: json['about'],
      avatar: Avatar.fromJson(json['avatar']),
      bio: json['bio'],
      country: json['country'],
      created: json['created'],
      currency: json['currency'],
      customDomain: json['custom_domain'],
      domain: json['domain'],
      groups: List<int>.from(json['groups']),
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'about': about,
      'avatar': avatar.toJson(),
      'bio': bio,
      'country': country,
      'created': created,
      'currency': currency,
      'custom_domain': customDomain,
      'domain': domain,
      'groups': groups,
      'id': id,
      'name': name,
    };
  }
}

class Avatar {
  final String? fallback;
  final String? image;
  final Meta? meta;

  Avatar({this.fallback, this.image, this.meta});

  factory Avatar.fromJson(Map<String, dynamic> json) {
    return Avatar(
      fallback: json['fallback'],
      image: json['image'],
      meta: json['meta'] != null ? Meta.fromJson(json['meta']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fallback': fallback,
      'image': image,
      'meta': meta?.toJson(),
    };
  }
}

class Meta {
  final int height;
  final int width;

  Meta({required this.height, required this.width});

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      height: json['height'],
      width: json['width'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'height': height,
      'width': width,
    };
  }
}
