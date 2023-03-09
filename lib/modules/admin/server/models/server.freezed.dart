// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Server _$ServerFromJson(Map<String, dynamic> json) {
  return _Server.fromJson(json);
}

/// @nodoc
mixin _$Server {
  int get id => throw _privateConstructorUsedError;
  String? get credential_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get ubuntu_version => throw _privateConstructorUsedError;
  String get database_type => throw _privateConstructorUsedError;
  String get ip_address => throw _privateConstructorUsedError;
  String get private_ip_address => throw _privateConstructorUsedError;
  int get ssh_port => throw _privateConstructorUsedError;
  bool get revoked => throw _privateConstructorUsedError;
  bool get is_ready => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerCopyWith<Server> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCopyWith<$Res> {
  factory $ServerCopyWith(Server value, $Res Function(Server) then) =
      _$ServerCopyWithImpl<$Res, Server>;
  @useResult
  $Res call(
      {int id,
      String? credential_id,
      String name,
      String type,
      String provider,
      String size,
      String region,
      String ubuntu_version,
      String database_type,
      String ip_address,
      String private_ip_address,
      int ssh_port,
      bool revoked,
      bool is_ready,
      String created_at});
}

/// @nodoc
class _$ServerCopyWithImpl<$Res, $Val extends Server>
    implements $ServerCopyWith<$Res> {
  _$ServerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? credential_id = freezed,
    Object? name = null,
    Object? type = null,
    Object? provider = null,
    Object? size = null,
    Object? region = null,
    Object? ubuntu_version = null,
    Object? database_type = null,
    Object? ip_address = null,
    Object? private_ip_address = null,
    Object? ssh_port = null,
    Object? revoked = null,
    Object? is_ready = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      credential_id: freezed == credential_id
          ? _value.credential_id
          : credential_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      ubuntu_version: null == ubuntu_version
          ? _value.ubuntu_version
          : ubuntu_version // ignore: cast_nullable_to_non_nullable
              as String,
      database_type: null == database_type
          ? _value.database_type
          : database_type // ignore: cast_nullable_to_non_nullable
              as String,
      ip_address: null == ip_address
          ? _value.ip_address
          : ip_address // ignore: cast_nullable_to_non_nullable
              as String,
      private_ip_address: null == private_ip_address
          ? _value.private_ip_address
          : private_ip_address // ignore: cast_nullable_to_non_nullable
              as String,
      ssh_port: null == ssh_port
          ? _value.ssh_port
          : ssh_port // ignore: cast_nullable_to_non_nullable
              as int,
      revoked: null == revoked
          ? _value.revoked
          : revoked // ignore: cast_nullable_to_non_nullable
              as bool,
      is_ready: null == is_ready
          ? _value.is_ready
          : is_ready // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerCopyWith<$Res> implements $ServerCopyWith<$Res> {
  factory _$$_ServerCopyWith(_$_Server value, $Res Function(_$_Server) then) =
      __$$_ServerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? credential_id,
      String name,
      String type,
      String provider,
      String size,
      String region,
      String ubuntu_version,
      String database_type,
      String ip_address,
      String private_ip_address,
      int ssh_port,
      bool revoked,
      bool is_ready,
      String created_at});
}

/// @nodoc
class __$$_ServerCopyWithImpl<$Res>
    extends _$ServerCopyWithImpl<$Res, _$_Server>
    implements _$$_ServerCopyWith<$Res> {
  __$$_ServerCopyWithImpl(_$_Server _value, $Res Function(_$_Server) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? credential_id = freezed,
    Object? name = null,
    Object? type = null,
    Object? provider = null,
    Object? size = null,
    Object? region = null,
    Object? ubuntu_version = null,
    Object? database_type = null,
    Object? ip_address = null,
    Object? private_ip_address = null,
    Object? ssh_port = null,
    Object? revoked = null,
    Object? is_ready = null,
    Object? created_at = null,
  }) {
    return _then(_$_Server(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      credential_id: freezed == credential_id
          ? _value.credential_id
          : credential_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      ubuntu_version: null == ubuntu_version
          ? _value.ubuntu_version
          : ubuntu_version // ignore: cast_nullable_to_non_nullable
              as String,
      database_type: null == database_type
          ? _value.database_type
          : database_type // ignore: cast_nullable_to_non_nullable
              as String,
      ip_address: null == ip_address
          ? _value.ip_address
          : ip_address // ignore: cast_nullable_to_non_nullable
              as String,
      private_ip_address: null == private_ip_address
          ? _value.private_ip_address
          : private_ip_address // ignore: cast_nullable_to_non_nullable
              as String,
      ssh_port: null == ssh_port
          ? _value.ssh_port
          : ssh_port // ignore: cast_nullable_to_non_nullable
              as int,
      revoked: null == revoked
          ? _value.revoked
          : revoked // ignore: cast_nullable_to_non_nullable
              as bool,
      is_ready: null == is_ready
          ? _value.is_ready
          : is_ready // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Server extends _Server {
  const _$_Server(
      {required this.id,
      this.credential_id,
      required this.name,
      required this.type,
      required this.provider,
      required this.size,
      required this.region,
      required this.ubuntu_version,
      required this.database_type,
      required this.ip_address,
      required this.private_ip_address,
      required this.ssh_port,
      required this.revoked,
      required this.is_ready,
      required this.created_at})
      : super._();

  factory _$_Server.fromJson(Map<String, dynamic> json) =>
      _$$_ServerFromJson(json);

  @override
  final int id;
  @override
  final String? credential_id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String provider;
  @override
  final String size;
  @override
  final String region;
  @override
  final String ubuntu_version;
  @override
  final String database_type;
  @override
  final String ip_address;
  @override
  final String private_ip_address;
  @override
  final int ssh_port;
  @override
  final bool revoked;
  @override
  final bool is_ready;
  @override
  final String created_at;

  @override
  String toString() {
    return 'Server(id: $id, credential_id: $credential_id, name: $name, type: $type, provider: $provider, size: $size, region: $region, ubuntu_version: $ubuntu_version, database_type: $database_type, ip_address: $ip_address, private_ip_address: $private_ip_address, ssh_port: $ssh_port, revoked: $revoked, is_ready: $is_ready, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Server &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.credential_id, credential_id) ||
                other.credential_id == credential_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.ubuntu_version, ubuntu_version) ||
                other.ubuntu_version == ubuntu_version) &&
            (identical(other.database_type, database_type) ||
                other.database_type == database_type) &&
            (identical(other.ip_address, ip_address) ||
                other.ip_address == ip_address) &&
            (identical(other.private_ip_address, private_ip_address) ||
                other.private_ip_address == private_ip_address) &&
            (identical(other.ssh_port, ssh_port) ||
                other.ssh_port == ssh_port) &&
            (identical(other.revoked, revoked) || other.revoked == revoked) &&
            (identical(other.is_ready, is_ready) ||
                other.is_ready == is_ready) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      credential_id,
      name,
      type,
      provider,
      size,
      region,
      ubuntu_version,
      database_type,
      ip_address,
      private_ip_address,
      ssh_port,
      revoked,
      is_ready,
      created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      __$$_ServerCopyWithImpl<_$_Server>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerToJson(
      this,
    );
  }
}

abstract class _Server extends Server {
  const factory _Server(
      {required final int id,
      final String? credential_id,
      required final String name,
      required final String type,
      required final String provider,
      required final String size,
      required final String region,
      required final String ubuntu_version,
      required final String database_type,
      required final String ip_address,
      required final String private_ip_address,
      required final int ssh_port,
      required final bool revoked,
      required final bool is_ready,
      required final String created_at}) = _$_Server;
  const _Server._() : super._();

  factory _Server.fromJson(Map<String, dynamic> json) = _$_Server.fromJson;

  @override
  int get id;
  @override
  String? get credential_id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get provider;
  @override
  String get size;
  @override
  String get region;
  @override
  String get ubuntu_version;
  @override
  String get database_type;
  @override
  String get ip_address;
  @override
  String get private_ip_address;
  @override
  int get ssh_port;
  @override
  bool get revoked;
  @override
  bool get is_ready;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      throw _privateConstructorUsedError;
}
