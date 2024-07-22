// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  int get id => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_id')
  int get siteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  int get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_id')
  int? get blockId => throw _privateConstructorUsedError;
  Commenter get commenter => throw _privateConstructorUsedError;
  @JsonKey(name: 'commenter_id')
  int get commenterId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  List<Comment>? get replies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {int id,
      String created,
      @JsonKey(name: 'site_id') int siteId,
      @JsonKey(name: 'post_id') int postId,
      @JsonKey(name: 'block_id') int? blockId,
      Commenter commenter,
      @JsonKey(name: 'commenter_id') int commenterId,
      String content,
      @JsonKey(name: 'parent_id') int? parentId,
      int status,
      List<Comment>? replies});

  $CommenterCopyWith<$Res> get commenter;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? siteId = null,
    Object? postId = null,
    Object? blockId = freezed,
    Object? commenter = null,
    Object? commenterId = null,
    Object? content = null,
    Object? parentId = freezed,
    Object? status = null,
    Object? replies = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      blockId: freezed == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as int?,
      commenter: null == commenter
          ? _value.commenter
          : commenter // ignore: cast_nullable_to_non_nullable
              as Commenter,
      commenterId: null == commenterId
          ? _value.commenterId
          : commenterId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      replies: freezed == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommenterCopyWith<$Res> get commenter {
    return $CommenterCopyWith<$Res>(_value.commenter, (value) {
      return _then(_value.copyWith(commenter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String created,
      @JsonKey(name: 'site_id') int siteId,
      @JsonKey(name: 'post_id') int postId,
      @JsonKey(name: 'block_id') int? blockId,
      Commenter commenter,
      @JsonKey(name: 'commenter_id') int commenterId,
      String content,
      @JsonKey(name: 'parent_id') int? parentId,
      int status,
      List<Comment>? replies});

  @override
  $CommenterCopyWith<$Res> get commenter;
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? siteId = null,
    Object? postId = null,
    Object? blockId = freezed,
    Object? commenter = null,
    Object? commenterId = null,
    Object? content = null,
    Object? parentId = freezed,
    Object? status = null,
    Object? replies = freezed,
  }) {
    return _then(_$CommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      blockId: freezed == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as int?,
      commenter: null == commenter
          ? _value.commenter
          : commenter // ignore: cast_nullable_to_non_nullable
              as Commenter,
      commenterId: null == commenterId
          ? _value.commenterId
          : commenterId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      replies: freezed == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl with DiagnosticableTreeMixin implements _Comment {
  const _$CommentImpl(
      {required this.id,
      required this.created,
      @JsonKey(name: 'site_id') required this.siteId,
      @JsonKey(name: 'post_id') required this.postId,
      @JsonKey(name: 'block_id') this.blockId,
      required this.commenter,
      @JsonKey(name: 'commenter_id') required this.commenterId,
      required this.content,
      @JsonKey(name: 'parent_id') this.parentId,
      required this.status,
      final List<Comment>? replies})
      : _replies = replies;

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  final int id;
  @override
  final String created;
  @override
  @JsonKey(name: 'site_id')
  final int siteId;
  @override
  @JsonKey(name: 'post_id')
  final int postId;
  @override
  @JsonKey(name: 'block_id')
  final int? blockId;
  @override
  final Commenter commenter;
  @override
  @JsonKey(name: 'commenter_id')
  final int commenterId;
  @override
  final String content;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  final int status;
  final List<Comment>? _replies;
  @override
  List<Comment>? get replies {
    final value = _replies;
    if (value == null) return null;
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Comment(id: $id, created: $created, siteId: $siteId, postId: $postId, blockId: $blockId, commenter: $commenter, commenterId: $commenterId, content: $content, parentId: $parentId, status: $status, replies: $replies)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Comment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('siteId', siteId))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('blockId', blockId))
      ..add(DiagnosticsProperty('commenter', commenter))
      ..add(DiagnosticsProperty('commenterId', commenterId))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('parentId', parentId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('replies', replies));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.blockId, blockId) || other.blockId == blockId) &&
            (identical(other.commenter, commenter) ||
                other.commenter == commenter) &&
            (identical(other.commenterId, commenterId) ||
                other.commenterId == commenterId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      siteId,
      postId,
      blockId,
      commenter,
      commenterId,
      content,
      parentId,
      status,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {required final int id,
      required final String created,
      @JsonKey(name: 'site_id') required final int siteId,
      @JsonKey(name: 'post_id') required final int postId,
      @JsonKey(name: 'block_id') final int? blockId,
      required final Commenter commenter,
      @JsonKey(name: 'commenter_id') required final int commenterId,
      required final String content,
      @JsonKey(name: 'parent_id') final int? parentId,
      required final int status,
      final List<Comment>? replies}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  int get id;
  @override
  String get created;
  @override
  @JsonKey(name: 'site_id')
  int get siteId;
  @override
  @JsonKey(name: 'post_id')
  int get postId;
  @override
  @JsonKey(name: 'block_id')
  int? get blockId;
  @override
  Commenter get commenter;
  @override
  @JsonKey(name: 'commenter_id')
  int get commenterId;
  @override
  String get content;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  int get status;
  @override
  List<Comment>? get replies;
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Commenter _$CommenterFromJson(Map<String, dynamic> json) {
  return _Commenter.fromJson(json);
}

/// @nodoc
mixin _$Commenter {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Avatar? get avatar => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommenterCopyWith<Commenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommenterCopyWith<$Res> {
  factory $CommenterCopyWith(Commenter value, $Res Function(Commenter) then) =
      _$CommenterCopyWithImpl<$Res, Commenter>;
  @useResult
  $Res call(
      {int id,
      String name,
      Avatar? avatar,
      String? domain,
      List<String>? tags});
}

/// @nodoc
class _$CommenterCopyWithImpl<$Res, $Val extends Commenter>
    implements $CommenterCopyWith<$Res> {
  _$CommenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? domain = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommenterImplCopyWith<$Res>
    implements $CommenterCopyWith<$Res> {
  factory _$$CommenterImplCopyWith(
          _$CommenterImpl value, $Res Function(_$CommenterImpl) then) =
      __$$CommenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      Avatar? avatar,
      String? domain,
      List<String>? tags});
}

/// @nodoc
class __$$CommenterImplCopyWithImpl<$Res>
    extends _$CommenterCopyWithImpl<$Res, _$CommenterImpl>
    implements _$$CommenterImplCopyWith<$Res> {
  __$$CommenterImplCopyWithImpl(
      _$CommenterImpl _value, $Res Function(_$CommenterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? domain = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$CommenterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommenterImpl with DiagnosticableTreeMixin implements _Commenter {
  const _$CommenterImpl(
      {required this.id,
      required this.name,
      this.avatar,
      this.domain,
      final List<String>? tags})
      : _tags = tags;

  factory _$CommenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommenterImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Avatar? avatar;
  @override
  final String? domain;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Commenter(id: $id, name: $name, avatar: $avatar, domain: $domain, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Commenter'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('domain', domain))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommenterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar, domain,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommenterImplCopyWith<_$CommenterImpl> get copyWith =>
      __$$CommenterImplCopyWithImpl<_$CommenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommenterImplToJson(
      this,
    );
  }
}

abstract class _Commenter implements Commenter {
  const factory _Commenter(
      {required final int id,
      required final String name,
      final Avatar? avatar,
      final String? domain,
      final List<String>? tags}) = _$CommenterImpl;

  factory _Commenter.fromJson(Map<String, dynamic> json) =
      _$CommenterImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Avatar? get avatar;
  @override
  String? get domain;
  @override
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$CommenterImplCopyWith<_$CommenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
