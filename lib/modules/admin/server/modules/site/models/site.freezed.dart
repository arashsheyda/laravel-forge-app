// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Site _$SiteFromJson(Map<String, dynamic> json) {
  return _Site.fromJson(json);
}

/// @nodoc
mixin _$Site {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get directory => throw _privateConstructorUsedError;
  bool get wildcards => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get repository => throw _privateConstructorUsedError;
  String? get repository_provider => throw _privateConstructorUsedError;
  String? get repository_branch => throw _privateConstructorUsedError;
  String? get repository_status => throw _privateConstructorUsedError;
  bool get quick_deploy => throw _privateConstructorUsedError;
  String get project_type => throw _privateConstructorUsedError;
  String? get app => throw _privateConstructorUsedError;
  String? get app_status => throw _privateConstructorUsedError;
  String get php_version => throw _privateConstructorUsedError;
  String? get deployment_status => throw _privateConstructorUsedError;
  String get deployment_url => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteCopyWith<Site> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCopyWith<$Res> {
  factory $SiteCopyWith(Site value, $Res Function(Site) then) =
      _$SiteCopyWithImpl<$Res, Site>;
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String directory,
      bool wildcards,
      String status,
      String? repository,
      String? repository_provider,
      String? repository_branch,
      String? repository_status,
      bool quick_deploy,
      String project_type,
      String? app,
      String? app_status,
      String php_version,
      String? deployment_status,
      String deployment_url,
      String created_at});
}

/// @nodoc
class _$SiteCopyWithImpl<$Res, $Val extends Site>
    implements $SiteCopyWith<$Res> {
  _$SiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? directory = null,
    Object? wildcards = null,
    Object? status = null,
    Object? repository = freezed,
    Object? repository_provider = freezed,
    Object? repository_branch = freezed,
    Object? repository_status = freezed,
    Object? quick_deploy = null,
    Object? project_type = null,
    Object? app = freezed,
    Object? app_status = freezed,
    Object? php_version = null,
    Object? deployment_status = freezed,
    Object? deployment_url = null,
    Object? created_at = null,
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
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      directory: null == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as String,
      wildcards: null == wildcards
          ? _value.wildcards
          : wildcards // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
      repository_provider: freezed == repository_provider
          ? _value.repository_provider
          : repository_provider // ignore: cast_nullable_to_non_nullable
              as String?,
      repository_branch: freezed == repository_branch
          ? _value.repository_branch
          : repository_branch // ignore: cast_nullable_to_non_nullable
              as String?,
      repository_status: freezed == repository_status
          ? _value.repository_status
          : repository_status // ignore: cast_nullable_to_non_nullable
              as String?,
      quick_deploy: null == quick_deploy
          ? _value.quick_deploy
          : quick_deploy // ignore: cast_nullable_to_non_nullable
              as bool,
      project_type: null == project_type
          ? _value.project_type
          : project_type // ignore: cast_nullable_to_non_nullable
              as String,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as String?,
      app_status: freezed == app_status
          ? _value.app_status
          : app_status // ignore: cast_nullable_to_non_nullable
              as String?,
      php_version: null == php_version
          ? _value.php_version
          : php_version // ignore: cast_nullable_to_non_nullable
              as String,
      deployment_status: freezed == deployment_status
          ? _value.deployment_status
          : deployment_status // ignore: cast_nullable_to_non_nullable
              as String?,
      deployment_url: null == deployment_url
          ? _value.deployment_url
          : deployment_url // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SiteCopyWith<$Res> implements $SiteCopyWith<$Res> {
  factory _$$_SiteCopyWith(_$_Site value, $Res Function(_$_Site) then) =
      __$$_SiteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String directory,
      bool wildcards,
      String status,
      String? repository,
      String? repository_provider,
      String? repository_branch,
      String? repository_status,
      bool quick_deploy,
      String project_type,
      String? app,
      String? app_status,
      String php_version,
      String? deployment_status,
      String deployment_url,
      String created_at});
}

/// @nodoc
class __$$_SiteCopyWithImpl<$Res> extends _$SiteCopyWithImpl<$Res, _$_Site>
    implements _$$_SiteCopyWith<$Res> {
  __$$_SiteCopyWithImpl(_$_Site _value, $Res Function(_$_Site) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? directory = null,
    Object? wildcards = null,
    Object? status = null,
    Object? repository = freezed,
    Object? repository_provider = freezed,
    Object? repository_branch = freezed,
    Object? repository_status = freezed,
    Object? quick_deploy = null,
    Object? project_type = null,
    Object? app = freezed,
    Object? app_status = freezed,
    Object? php_version = null,
    Object? deployment_status = freezed,
    Object? deployment_url = null,
    Object? created_at = null,
  }) {
    return _then(_$_Site(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      directory: null == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as String,
      wildcards: null == wildcards
          ? _value.wildcards
          : wildcards // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
      repository_provider: freezed == repository_provider
          ? _value.repository_provider
          : repository_provider // ignore: cast_nullable_to_non_nullable
              as String?,
      repository_branch: freezed == repository_branch
          ? _value.repository_branch
          : repository_branch // ignore: cast_nullable_to_non_nullable
              as String?,
      repository_status: freezed == repository_status
          ? _value.repository_status
          : repository_status // ignore: cast_nullable_to_non_nullable
              as String?,
      quick_deploy: null == quick_deploy
          ? _value.quick_deploy
          : quick_deploy // ignore: cast_nullable_to_non_nullable
              as bool,
      project_type: null == project_type
          ? _value.project_type
          : project_type // ignore: cast_nullable_to_non_nullable
              as String,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as String?,
      app_status: freezed == app_status
          ? _value.app_status
          : app_status // ignore: cast_nullable_to_non_nullable
              as String?,
      php_version: null == php_version
          ? _value.php_version
          : php_version // ignore: cast_nullable_to_non_nullable
              as String,
      deployment_status: freezed == deployment_status
          ? _value.deployment_status
          : deployment_status // ignore: cast_nullable_to_non_nullable
              as String?,
      deployment_url: null == deployment_url
          ? _value.deployment_url
          : deployment_url // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Site extends _Site {
  const _$_Site(
      {required this.id,
      required this.name,
      required this.username,
      required this.directory,
      required this.wildcards,
      required this.status,
      this.repository,
      this.repository_provider,
      this.repository_branch,
      this.repository_status,
      required this.quick_deploy,
      required this.project_type,
      this.app,
      this.app_status,
      required this.php_version,
      this.deployment_status,
      required this.deployment_url,
      required this.created_at})
      : super._();

  factory _$_Site.fromJson(Map<String, dynamic> json) => _$$_SiteFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String directory;
  @override
  final bool wildcards;
  @override
  final String status;
  @override
  final String? repository;
  @override
  final String? repository_provider;
  @override
  final String? repository_branch;
  @override
  final String? repository_status;
  @override
  final bool quick_deploy;
  @override
  final String project_type;
  @override
  final String? app;
  @override
  final String? app_status;
  @override
  final String php_version;
  @override
  final String? deployment_status;
  @override
  final String deployment_url;
  @override
  final String created_at;

  @override
  String toString() {
    return 'Site(id: $id, name: $name, username: $username, directory: $directory, wildcards: $wildcards, status: $status, repository: $repository, repository_provider: $repository_provider, repository_branch: $repository_branch, repository_status: $repository_status, quick_deploy: $quick_deploy, project_type: $project_type, app: $app, app_status: $app_status, php_version: $php_version, deployment_status: $deployment_status, deployment_url: $deployment_url, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Site &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.directory, directory) ||
                other.directory == directory) &&
            (identical(other.wildcards, wildcards) ||
                other.wildcards == wildcards) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.repository, repository) ||
                other.repository == repository) &&
            (identical(other.repository_provider, repository_provider) ||
                other.repository_provider == repository_provider) &&
            (identical(other.repository_branch, repository_branch) ||
                other.repository_branch == repository_branch) &&
            (identical(other.repository_status, repository_status) ||
                other.repository_status == repository_status) &&
            (identical(other.quick_deploy, quick_deploy) ||
                other.quick_deploy == quick_deploy) &&
            (identical(other.project_type, project_type) ||
                other.project_type == project_type) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.app_status, app_status) ||
                other.app_status == app_status) &&
            (identical(other.php_version, php_version) ||
                other.php_version == php_version) &&
            (identical(other.deployment_status, deployment_status) ||
                other.deployment_status == deployment_status) &&
            (identical(other.deployment_url, deployment_url) ||
                other.deployment_url == deployment_url) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      username,
      directory,
      wildcards,
      status,
      repository,
      repository_provider,
      repository_branch,
      repository_status,
      quick_deploy,
      project_type,
      app,
      app_status,
      php_version,
      deployment_status,
      deployment_url,
      created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SiteCopyWith<_$_Site> get copyWith =>
      __$$_SiteCopyWithImpl<_$_Site>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SiteToJson(
      this,
    );
  }
}

abstract class _Site extends Site {
  const factory _Site(
      {required final int id,
      required final String name,
      required final String username,
      required final String directory,
      required final bool wildcards,
      required final String status,
      final String? repository,
      final String? repository_provider,
      final String? repository_branch,
      final String? repository_status,
      required final bool quick_deploy,
      required final String project_type,
      final String? app,
      final String? app_status,
      required final String php_version,
      final String? deployment_status,
      required final String deployment_url,
      required final String created_at}) = _$_Site;
  const _Site._() : super._();

  factory _Site.fromJson(Map<String, dynamic> json) = _$_Site.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get directory;
  @override
  bool get wildcards;
  @override
  String get status;
  @override
  String? get repository;
  @override
  String? get repository_provider;
  @override
  String? get repository_branch;
  @override
  String? get repository_status;
  @override
  bool get quick_deploy;
  @override
  String get project_type;
  @override
  String? get app;
  @override
  String? get app_status;
  @override
  String get php_version;
  @override
  String? get deployment_status;
  @override
  String get deployment_url;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_SiteCopyWith<_$_Site> get copyWith => throw _privateConstructorUsedError;
}
