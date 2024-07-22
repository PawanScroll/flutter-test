// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  int get id => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  ImageSrc? get avatar => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call(
      {int id,
      String bio,
      String name,
      String about,
      ImageSrc? avatar,
      String country,
      String currency});

  $ImageSrcCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bio = null,
    Object? name = null,
    Object? about = null,
    Object? avatar = freezed,
    Object? country = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as ImageSrc?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageSrcCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $ImageSrcCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
          _$AuthorImpl value, $Res Function(_$AuthorImpl) then) =
      __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String bio,
      String name,
      String about,
      ImageSrc? avatar,
      String country,
      String currency});

  @override
  $ImageSrcCopyWith<$Res>? get avatar;
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
      _$AuthorImpl _value, $Res Function(_$AuthorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bio = null,
    Object? name = null,
    Object? about = null,
    Object? avatar = freezed,
    Object? country = null,
    Object? currency = null,
  }) {
    return _then(_$AuthorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as ImageSrc?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl with DiagnosticableTreeMixin implements _Author {
  const _$AuthorImpl(
      {required this.id,
      required this.bio,
      required this.name,
      required this.about,
      this.avatar,
      required this.country,
      required this.currency});

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  final int id;
  @override
  final String bio;
  @override
  final String name;
  @override
  final String about;
  @override
  final ImageSrc? avatar;
  @override
  final String country;
  @override
  final String currency;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Author(id: $id, bio: $bio, name: $name, about: $about, avatar: $avatar, country: $country, currency: $currency)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Author'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('currency', currency));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, bio, name, about, avatar, country, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {required final int id,
      required final String bio,
      required final String name,
      required final String about,
      final ImageSrc? avatar,
      required final String country,
      required final String currency}) = _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  int get id;
  @override
  String get bio;
  @override
  String get name;
  @override
  String get about;
  @override
  ImageSrc? get avatar;
  @override
  String get country;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostMeta _$PostMetaFromJson(Map<String, dynamic> json) {
  return _PostMeta.fromJson(json);
}

/// @nodoc
mixin _$PostMeta {
  Cover get cover => throw _privateConstructorUsedError;
  Content? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostMetaCopyWith<PostMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostMetaCopyWith<$Res> {
  factory $PostMetaCopyWith(PostMeta value, $Res Function(PostMeta) then) =
      _$PostMetaCopyWithImpl<$Res, PostMeta>;
  @useResult
  $Res call({Cover cover, Content? content});

  $CoverCopyWith<$Res> get cover;
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class _$PostMetaCopyWithImpl<$Res, $Val extends PostMeta>
    implements $PostMetaCopyWith<$Res> {
  _$PostMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cover = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as Cover,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoverCopyWith<$Res> get cover {
    return $CoverCopyWith<$Res>(_value.cover, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostMetaImplCopyWith<$Res>
    implements $PostMetaCopyWith<$Res> {
  factory _$$PostMetaImplCopyWith(
          _$PostMetaImpl value, $Res Function(_$PostMetaImpl) then) =
      __$$PostMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Cover cover, Content? content});

  @override
  $CoverCopyWith<$Res> get cover;
  @override
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class __$$PostMetaImplCopyWithImpl<$Res>
    extends _$PostMetaCopyWithImpl<$Res, _$PostMetaImpl>
    implements _$$PostMetaImplCopyWith<$Res> {
  __$$PostMetaImplCopyWithImpl(
      _$PostMetaImpl _value, $Res Function(_$PostMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cover = null,
    Object? content = freezed,
  }) {
    return _then(_$PostMetaImpl(
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as Cover,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostMetaImpl with DiagnosticableTreeMixin implements _PostMeta {
  const _$PostMetaImpl({required this.cover, this.content});

  factory _$PostMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostMetaImplFromJson(json);

  @override
  final Cover cover;
  @override
  final Content? content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostMeta(cover: $cover, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostMeta'))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostMetaImpl &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cover, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostMetaImplCopyWith<_$PostMetaImpl> get copyWith =>
      __$$PostMetaImplCopyWithImpl<_$PostMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostMetaImplToJson(
      this,
    );
  }
}

abstract class _PostMeta implements PostMeta {
  const factory _PostMeta(
      {required final Cover cover, final Content? content}) = _$PostMetaImpl;

  factory _PostMeta.fromJson(Map<String, dynamic> json) =
      _$PostMetaImpl.fromJson;

  @override
  Cover get cover;
  @override
  Content? get content;
  @override
  @JsonKey(ignore: true)
  _$$PostMetaImplCopyWith<_$PostMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cover _$CoverFromJson(Map<String, dynamic> json) {
  return _Cover.fromJson(json);
}

/// @nodoc
mixin _$Cover {
  @JsonKey(fromJson: _srcFromJson)
  Object? get src => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverCopyWith<Cover> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverCopyWith<$Res> {
  factory $CoverCopyWith(Cover value, $Res Function(Cover) then) =
      _$CoverCopyWithImpl<$Res, Cover>;
  @useResult
  $Res call({@JsonKey(fromJson: _srcFromJson) Object? src, String? caption});
}

/// @nodoc
class _$CoverCopyWithImpl<$Res, $Val extends Cover>
    implements $CoverCopyWith<$Res> {
  _$CoverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = freezed,
    Object? caption = freezed,
  }) {
    return _then(_value.copyWith(
      src: freezed == src ? _value.src : src,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoverImplCopyWith<$Res> implements $CoverCopyWith<$Res> {
  factory _$$CoverImplCopyWith(
          _$CoverImpl value, $Res Function(_$CoverImpl) then) =
      __$$CoverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(fromJson: _srcFromJson) Object? src, String? caption});
}

/// @nodoc
class __$$CoverImplCopyWithImpl<$Res>
    extends _$CoverCopyWithImpl<$Res, _$CoverImpl>
    implements _$$CoverImplCopyWith<$Res> {
  __$$CoverImplCopyWithImpl(
      _$CoverImpl _value, $Res Function(_$CoverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = freezed,
    Object? caption = freezed,
  }) {
    return _then(_$CoverImpl(
      src: freezed == src ? _value.src : src,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverImpl with DiagnosticableTreeMixin implements _Cover {
  const _$CoverImpl({@JsonKey(fromJson: _srcFromJson) this.src, this.caption});

  factory _$CoverImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverImplFromJson(json);

  @override
  @JsonKey(fromJson: _srcFromJson)
  final Object? src;
  @override
  final String? caption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cover(src: $src, caption: $caption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cover'))
      ..add(DiagnosticsProperty('src', src))
      ..add(DiagnosticsProperty('caption', caption));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverImpl &&
            const DeepCollectionEquality().equals(other.src, src) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(src), caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverImplCopyWith<_$CoverImpl> get copyWith =>
      __$$CoverImplCopyWithImpl<_$CoverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverImplToJson(
      this,
    );
  }
}

abstract class _Cover implements Cover {
  const factory _Cover(
      {@JsonKey(fromJson: _srcFromJson) final Object? src,
      final String? caption}) = _$CoverImpl;

  factory _Cover.fromJson(Map<String, dynamic> json) = _$CoverImpl.fromJson;

  @override
  @JsonKey(fromJson: _srcFromJson)
  Object? get src;
  @override
  String? get caption;
  @override
  @JsonKey(ignore: true)
  _$$CoverImplCopyWith<_$CoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageSrc _$ImageSrcFromJson(Map<String, dynamic> json) {
  return _ImageSrc.fromJson(json);
}

/// @nodoc
mixin _$ImageSrc {
  ImageMeta? get meta => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get fallback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageSrcCopyWith<ImageSrc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSrcCopyWith<$Res> {
  factory $ImageSrcCopyWith(ImageSrc value, $Res Function(ImageSrc) then) =
      _$ImageSrcCopyWithImpl<$Res, ImageSrc>;
  @useResult
  $Res call({ImageMeta? meta, String? image, String? fallback});

  $ImageMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ImageSrcCopyWithImpl<$Res, $Val extends ImageSrc>
    implements $ImageSrcCopyWith<$Res> {
  _$ImageSrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? image = freezed,
    Object? fallback = freezed,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ImageMeta?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      fallback: freezed == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $ImageMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageSrcImplCopyWith<$Res>
    implements $ImageSrcCopyWith<$Res> {
  factory _$$ImageSrcImplCopyWith(
          _$ImageSrcImpl value, $Res Function(_$ImageSrcImpl) then) =
      __$$ImageSrcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageMeta? meta, String? image, String? fallback});

  @override
  $ImageMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ImageSrcImplCopyWithImpl<$Res>
    extends _$ImageSrcCopyWithImpl<$Res, _$ImageSrcImpl>
    implements _$$ImageSrcImplCopyWith<$Res> {
  __$$ImageSrcImplCopyWithImpl(
      _$ImageSrcImpl _value, $Res Function(_$ImageSrcImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? image = freezed,
    Object? fallback = freezed,
  }) {
    return _then(_$ImageSrcImpl(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ImageMeta?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      fallback: freezed == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageSrcImpl with DiagnosticableTreeMixin implements _ImageSrc {
  const _$ImageSrcImpl({this.meta, this.image, this.fallback});

  factory _$ImageSrcImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageSrcImplFromJson(json);

  @override
  final ImageMeta? meta;
  @override
  final String? image;
  @override
  final String? fallback;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageSrc(meta: $meta, image: $image, fallback: $fallback)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageSrc'))
      ..add(DiagnosticsProperty('meta', meta))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('fallback', fallback));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSrcImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.fallback, fallback) ||
                other.fallback == fallback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, image, fallback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSrcImplCopyWith<_$ImageSrcImpl> get copyWith =>
      __$$ImageSrcImplCopyWithImpl<_$ImageSrcImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageSrcImplToJson(
      this,
    );
  }
}

abstract class _ImageSrc implements ImageSrc {
  const factory _ImageSrc(
      {final ImageMeta? meta,
      final String? image,
      final String? fallback}) = _$ImageSrcImpl;

  factory _ImageSrc.fromJson(Map<String, dynamic> json) =
      _$ImageSrcImpl.fromJson;

  @override
  ImageMeta? get meta;
  @override
  String? get image;
  @override
  String? get fallback;
  @override
  @JsonKey(ignore: true)
  _$$ImageSrcImplCopyWith<_$ImageSrcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageMeta _$ImageMetaFromJson(Map<String, dynamic> json) {
  return _ImageMeta.fromJson(json);
}

/// @nodoc
mixin _$ImageMeta {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageMetaCopyWith<ImageMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageMetaCopyWith<$Res> {
  factory $ImageMetaCopyWith(ImageMeta value, $Res Function(ImageMeta) then) =
      _$ImageMetaCopyWithImpl<$Res, ImageMeta>;
  @useResult
  $Res call({int width, int height});
}

/// @nodoc
class _$ImageMetaCopyWithImpl<$Res, $Val extends ImageMeta>
    implements $ImageMetaCopyWith<$Res> {
  _$ImageMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageMetaImplCopyWith<$Res>
    implements $ImageMetaCopyWith<$Res> {
  factory _$$ImageMetaImplCopyWith(
          _$ImageMetaImpl value, $Res Function(_$ImageMetaImpl) then) =
      __$$ImageMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height});
}

/// @nodoc
class __$$ImageMetaImplCopyWithImpl<$Res>
    extends _$ImageMetaCopyWithImpl<$Res, _$ImageMetaImpl>
    implements _$$ImageMetaImplCopyWith<$Res> {
  __$$ImageMetaImplCopyWithImpl(
      _$ImageMetaImpl _value, $Res Function(_$ImageMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$ImageMetaImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageMetaImpl with DiagnosticableTreeMixin implements _ImageMeta {
  const _$ImageMetaImpl({required this.width, required this.height});

  factory _$ImageMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageMetaImplFromJson(json);

  @override
  final int width;
  @override
  final int height;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageMeta(width: $width, height: $height)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageMeta'))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageMetaImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageMetaImplCopyWith<_$ImageMetaImpl> get copyWith =>
      __$$ImageMetaImplCopyWithImpl<_$ImageMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageMetaImplToJson(
      this,
    );
  }
}

abstract class _ImageMeta implements ImageMeta {
  const factory _ImageMeta(
      {required final int width, required final int height}) = _$ImageMetaImpl;

  factory _ImageMeta.fromJson(Map<String, dynamic> json) =
      _$ImageMetaImpl.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(ignore: true)
  _$$ImageMetaImplCopyWith<_$ImageMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  TextContent? get text => throw _privateConstructorUsedError;
  AudioContent? get audio => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call({TextContent? text, AudioContent? audio, int? duration});

  $TextContentCopyWith<$Res>? get text;
  $AudioContentCopyWith<$Res>? get audio;
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? audio = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextContent?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioContent?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextContentCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $TextContentCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioContentCopyWith<$Res>? get audio {
    if (_value.audio == null) {
      return null;
    }

    return $AudioContentCopyWith<$Res>(_value.audio!, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextContent? text, AudioContent? audio, int? duration});

  @override
  $TextContentCopyWith<$Res>? get text;
  @override
  $AudioContentCopyWith<$Res>? get audio;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? audio = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$ContentImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextContent?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioContent?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentImpl with DiagnosticableTreeMixin implements _Content {
  const _$ContentImpl({this.text, this.audio, this.duration});

  factory _$ContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentImplFromJson(json);

  @override
  final TextContent? text;
  @override
  final AudioContent? audio;
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Content(text: $text, audio: $audio, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Content'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('audio', audio))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, audio, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentImplToJson(
      this,
    );
  }
}

abstract class _Content implements Content {
  const factory _Content(
      {final TextContent? text,
      final AudioContent? audio,
      final int? duration}) = _$ContentImpl;

  factory _Content.fromJson(Map<String, dynamic> json) = _$ContentImpl.fromJson;

  @override
  TextContent? get text;
  @override
  AudioContent? get audio;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextContent _$TextContentFromJson(Map<String, dynamic> json) {
  return _TextContent.fromJson(json);
}

/// @nodoc
mixin _$TextContent {
  int get wc => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextContentCopyWith<TextContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextContentCopyWith<$Res> {
  factory $TextContentCopyWith(
          TextContent value, $Res Function(TextContent) then) =
      _$TextContentCopyWithImpl<$Res, TextContent>;
  @useResult
  $Res call({int wc, int duration});
}

/// @nodoc
class _$TextContentCopyWithImpl<$Res, $Val extends TextContent>
    implements $TextContentCopyWith<$Res> {
  _$TextContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wc = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      wc: null == wc
          ? _value.wc
          : wc // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextContentImplCopyWith<$Res>
    implements $TextContentCopyWith<$Res> {
  factory _$$TextContentImplCopyWith(
          _$TextContentImpl value, $Res Function(_$TextContentImpl) then) =
      __$$TextContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int wc, int duration});
}

/// @nodoc
class __$$TextContentImplCopyWithImpl<$Res>
    extends _$TextContentCopyWithImpl<$Res, _$TextContentImpl>
    implements _$$TextContentImplCopyWith<$Res> {
  __$$TextContentImplCopyWithImpl(
      _$TextContentImpl _value, $Res Function(_$TextContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wc = null,
    Object? duration = null,
  }) {
    return _then(_$TextContentImpl(
      wc: null == wc
          ? _value.wc
          : wc // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextContentImpl with DiagnosticableTreeMixin implements _TextContent {
  const _$TextContentImpl({required this.wc, required this.duration});

  factory _$TextContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextContentImplFromJson(json);

  @override
  final int wc;
  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextContent(wc: $wc, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextContent'))
      ..add(DiagnosticsProperty('wc', wc))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextContentImpl &&
            (identical(other.wc, wc) || other.wc == wc) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wc, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextContentImplCopyWith<_$TextContentImpl> get copyWith =>
      __$$TextContentImplCopyWithImpl<_$TextContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextContentImplToJson(
      this,
    );
  }
}

abstract class _TextContent implements TextContent {
  const factory _TextContent(
      {required final int wc, required final int duration}) = _$TextContentImpl;

  factory _TextContent.fromJson(Map<String, dynamic> json) =
      _$TextContentImpl.fromJson;

  @override
  int get wc;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$TextContentImplCopyWith<_$TextContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioContent _$AudioContentFromJson(Map<String, dynamic> json) {
  return _AudioContent.fromJson(json);
}

/// @nodoc
mixin _$AudioContent {
  int get count => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioContentCopyWith<AudioContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioContentCopyWith<$Res> {
  factory $AudioContentCopyWith(
          AudioContent value, $Res Function(AudioContent) then) =
      _$AudioContentCopyWithImpl<$Res, AudioContent>;
  @useResult
  $Res call({int count, int duration});
}

/// @nodoc
class _$AudioContentCopyWithImpl<$Res, $Val extends AudioContent>
    implements $AudioContentCopyWith<$Res> {
  _$AudioContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioContentImplCopyWith<$Res>
    implements $AudioContentCopyWith<$Res> {
  factory _$$AudioContentImplCopyWith(
          _$AudioContentImpl value, $Res Function(_$AudioContentImpl) then) =
      __$$AudioContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int duration});
}

/// @nodoc
class __$$AudioContentImplCopyWithImpl<$Res>
    extends _$AudioContentCopyWithImpl<$Res, _$AudioContentImpl>
    implements _$$AudioContentImplCopyWith<$Res> {
  __$$AudioContentImplCopyWithImpl(
      _$AudioContentImpl _value, $Res Function(_$AudioContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? duration = null,
  }) {
    return _then(_$AudioContentImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioContentImpl with DiagnosticableTreeMixin implements _AudioContent {
  const _$AudioContentImpl({required this.count, required this.duration});

  factory _$AudioContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioContentImplFromJson(json);

  @override
  final int count;
  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioContent(count: $count, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioContent'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioContentImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioContentImplCopyWith<_$AudioContentImpl> get copyWith =>
      __$$AudioContentImplCopyWithImpl<_$AudioContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioContentImplToJson(
      this,
    );
  }
}

abstract class _AudioContent implements AudioContent {
  const factory _AudioContent(
      {required final int count,
      required final int duration}) = _$AudioContentImpl;

  factory _AudioContent.fromJson(Map<String, dynamic> json) =
      _$AudioContentImpl.fromJson;

  @override
  int get count;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$AudioContentImplCopyWith<_$AudioContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pricing _$PricingFromJson(Map<String, dynamic> json) {
  return _Pricing.fromJson(json);
}

/// @nodoc
mixin _$Pricing {
// ignore: non_constant_identifier_names
  int? get USD =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int? get INR =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int? get EUR => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingCopyWith<Pricing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingCopyWith<$Res> {
  factory $PricingCopyWith(Pricing value, $Res Function(Pricing) then) =
      _$PricingCopyWithImpl<$Res, Pricing>;
  @useResult
  $Res call({int? USD, int? INR, int? EUR});
}

/// @nodoc
class _$PricingCopyWithImpl<$Res, $Val extends Pricing>
    implements $PricingCopyWith<$Res> {
  _$PricingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? USD = freezed,
    Object? INR = freezed,
    Object? EUR = freezed,
  }) {
    return _then(_value.copyWith(
      USD: freezed == USD
          ? _value.USD
          : USD // ignore: cast_nullable_to_non_nullable
              as int?,
      INR: freezed == INR
          ? _value.INR
          : INR // ignore: cast_nullable_to_non_nullable
              as int?,
      EUR: freezed == EUR
          ? _value.EUR
          : EUR // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PricingImplCopyWith<$Res> implements $PricingCopyWith<$Res> {
  factory _$$PricingImplCopyWith(
          _$PricingImpl value, $Res Function(_$PricingImpl) then) =
      __$$PricingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? USD, int? INR, int? EUR});
}

/// @nodoc
class __$$PricingImplCopyWithImpl<$Res>
    extends _$PricingCopyWithImpl<$Res, _$PricingImpl>
    implements _$$PricingImplCopyWith<$Res> {
  __$$PricingImplCopyWithImpl(
      _$PricingImpl _value, $Res Function(_$PricingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? USD = freezed,
    Object? INR = freezed,
    Object? EUR = freezed,
  }) {
    return _then(_$PricingImpl(
      USD: freezed == USD
          ? _value.USD
          : USD // ignore: cast_nullable_to_non_nullable
              as int?,
      INR: freezed == INR
          ? _value.INR
          : INR // ignore: cast_nullable_to_non_nullable
              as int?,
      EUR: freezed == EUR
          ? _value.EUR
          : EUR // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingImpl with DiagnosticableTreeMixin implements _Pricing {
  const _$PricingImpl({this.USD, this.INR, this.EUR});

  factory _$PricingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingImplFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final int? USD;
// ignore: non_constant_identifier_names
  @override
  final int? INR;
// ignore: non_constant_identifier_names
  @override
  final int? EUR;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pricing(USD: $USD, INR: $INR, EUR: $EUR)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pricing'))
      ..add(DiagnosticsProperty('USD', USD))
      ..add(DiagnosticsProperty('INR', INR))
      ..add(DiagnosticsProperty('EUR', EUR));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingImpl &&
            (identical(other.USD, USD) || other.USD == USD) &&
            (identical(other.INR, INR) || other.INR == INR) &&
            (identical(other.EUR, EUR) || other.EUR == EUR));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, USD, INR, EUR);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingImplCopyWith<_$PricingImpl> get copyWith =>
      __$$PricingImplCopyWithImpl<_$PricingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingImplToJson(
      this,
    );
  }
}

abstract class _Pricing implements Pricing {
  const factory _Pricing({final int? USD, final int? INR, final int? EUR}) =
      _$PricingImpl;

  factory _Pricing.fromJson(Map<String, dynamic> json) = _$PricingImpl.fromJson;

  @override // ignore: non_constant_identifier_names
  int? get USD;
  @override // ignore: non_constant_identifier_names
  int? get INR;
  @override // ignore: non_constant_identifier_names
  int? get EUR;
  @override
  @JsonKey(ignore: true)
  _$$PricingImplCopyWith<_$PricingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_id')
  int get siteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  int get authorId => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String get permalink => throw _privateConstructorUsedError;
  String get published => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  List<dynamic> get tags => throw _privateConstructorUsedError;
  PostMeta get meta => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  dynamic get pricing => throw _privateConstructorUsedError;
  String get ptype => throw _privateConstructorUsedError;
  String get subtype => throw _privateConstructorUsedError;
  int get access => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments_count')
  int get commentsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'site_id') int siteId,
      @JsonKey(name: 'author_id') int authorId,
      Author author,
      @JsonKey(name: 'parent_id') int? parentId,
      String permalink,
      String published,
      String updated,
      int index,
      String summary,
      String language,
      List<dynamic> tags,
      PostMeta meta,
      int visibility,
      dynamic pricing,
      String ptype,
      String subtype,
      int access,
      int likes,
      String? content,
      @JsonKey(name: 'comments_count') int commentsCount});

  $AuthorCopyWith<$Res> get author;
  $PostMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? siteId = null,
    Object? authorId = null,
    Object? author = null,
    Object? parentId = freezed,
    Object? permalink = null,
    Object? published = null,
    Object? updated = null,
    Object? index = null,
    Object? summary = null,
    Object? language = null,
    Object? tags = null,
    Object? meta = null,
    Object? visibility = null,
    Object? pricing = freezed,
    Object? ptype = null,
    Object? subtype = null,
    Object? access = null,
    Object? likes = null,
    Object? content = freezed,
    Object? commentsCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as int,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PostMeta,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pricing: freezed == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ptype: null == ptype
          ? _value.ptype
          : ptype // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostMetaCopyWith<$Res> get meta {
    return $PostMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'site_id') int siteId,
      @JsonKey(name: 'author_id') int authorId,
      Author author,
      @JsonKey(name: 'parent_id') int? parentId,
      String permalink,
      String published,
      String updated,
      int index,
      String summary,
      String language,
      List<dynamic> tags,
      PostMeta meta,
      int visibility,
      dynamic pricing,
      String ptype,
      String subtype,
      int access,
      int likes,
      String? content,
      @JsonKey(name: 'comments_count') int commentsCount});

  @override
  $AuthorCopyWith<$Res> get author;
  @override
  $PostMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? siteId = null,
    Object? authorId = null,
    Object? author = null,
    Object? parentId = freezed,
    Object? permalink = null,
    Object? published = null,
    Object? updated = null,
    Object? index = null,
    Object? summary = null,
    Object? language = null,
    Object? tags = null,
    Object? meta = null,
    Object? visibility = null,
    Object? pricing = freezed,
    Object? ptype = null,
    Object? subtype = null,
    Object? access = null,
    Object? likes = null,
    Object? content = freezed,
    Object? commentsCount = null,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as int,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PostMeta,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pricing: freezed == pricing ? _value.pricing! : pricing,
      ptype: null == ptype
          ? _value.ptype
          : ptype // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl with DiagnosticableTreeMixin implements _Post {
  const _$PostImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'site_id') required this.siteId,
      @JsonKey(name: 'author_id') required this.authorId,
      required this.author,
      @JsonKey(name: 'parent_id') this.parentId,
      required this.permalink,
      required this.published,
      required this.updated,
      required this.index,
      required this.summary,
      required this.language,
      final List<dynamic> tags = const [],
      required this.meta,
      required this.visibility,
      this.pricing = const {},
      required this.ptype,
      required this.subtype,
      required this.access,
      required this.likes,
      this.content,
      @JsonKey(name: 'comments_count') required this.commentsCount})
      : _tags = tags;

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'site_id')
  final int siteId;
  @override
  @JsonKey(name: 'author_id')
  final int authorId;
  @override
  final Author author;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  final String permalink;
  @override
  final String published;
  @override
  final String updated;
  @override
  final int index;
  @override
  final String summary;
  @override
  final String language;
  final List<dynamic> _tags;
  @override
  @JsonKey()
  List<dynamic> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final PostMeta meta;
  @override
  final int visibility;
  @override
  @JsonKey()
  final dynamic pricing;
  @override
  final String ptype;
  @override
  final String subtype;
  @override
  final int access;
  @override
  final int likes;
  @override
  final String? content;
  @override
  @JsonKey(name: 'comments_count')
  final int commentsCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Post(id: $id, title: $title, siteId: $siteId, authorId: $authorId, author: $author, parentId: $parentId, permalink: $permalink, published: $published, updated: $updated, index: $index, summary: $summary, language: $language, tags: $tags, meta: $meta, visibility: $visibility, pricing: $pricing, ptype: $ptype, subtype: $subtype, access: $access, likes: $likes, content: $content, commentsCount: $commentsCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Post'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('siteId', siteId))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('parentId', parentId))
      ..add(DiagnosticsProperty('permalink', permalink))
      ..add(DiagnosticsProperty('published', published))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('summary', summary))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('meta', meta))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('pricing', pricing))
      ..add(DiagnosticsProperty('ptype', ptype))
      ..add(DiagnosticsProperty('subtype', subtype))
      ..add(DiagnosticsProperty('access', access))
      ..add(DiagnosticsProperty('likes', likes))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('commentsCount', commentsCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            const DeepCollectionEquality().equals(other.pricing, pricing) &&
            (identical(other.ptype, ptype) || other.ptype == ptype) &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        siteId,
        authorId,
        author,
        parentId,
        permalink,
        published,
        updated,
        index,
        summary,
        language,
        const DeepCollectionEquality().hash(_tags),
        meta,
        visibility,
        const DeepCollectionEquality().hash(pricing),
        ptype,
        subtype,
        access,
        likes,
        content,
        commentsCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
          {required final int id,
          required final String title,
          @JsonKey(name: 'site_id') required final int siteId,
          @JsonKey(name: 'author_id') required final int authorId,
          required final Author author,
          @JsonKey(name: 'parent_id') final int? parentId,
          required final String permalink,
          required final String published,
          required final String updated,
          required final int index,
          required final String summary,
          required final String language,
          final List<dynamic> tags,
          required final PostMeta meta,
          required final int visibility,
          final dynamic pricing,
          required final String ptype,
          required final String subtype,
          required final int access,
          required final int likes,
          final String? content,
          @JsonKey(name: 'comments_count') required final int commentsCount}) =
      _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'site_id')
  int get siteId;
  @override
  @JsonKey(name: 'author_id')
  int get authorId;
  @override
  Author get author;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  String get permalink;
  @override
  String get published;
  @override
  String get updated;
  @override
  int get index;
  @override
  String get summary;
  @override
  String get language;
  @override
  List<dynamic> get tags;
  @override
  PostMeta get meta;
  @override
  int get visibility;
  @override
  dynamic get pricing;
  @override
  String get ptype;
  @override
  String get subtype;
  @override
  int get access;
  @override
  int get likes;
  @override
  String? get content;
  @override
  @JsonKey(name: 'comments_count')
  int get commentsCount;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
