// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServerState {
  List<Server> get servers => throw _privateConstructorUsedError;
  bool get laoding => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerStateCopyWith<ServerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerStateCopyWith<$Res> {
  factory $ServerStateCopyWith(
          ServerState value, $Res Function(ServerState) then) =
      _$ServerStateCopyWithImpl<$Res, ServerState>;
  @useResult
  $Res call({List<Server> servers, bool laoding});
}

/// @nodoc
class _$ServerStateCopyWithImpl<$Res, $Val extends ServerState>
    implements $ServerStateCopyWith<$Res> {
  _$ServerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servers = null,
    Object? laoding = null,
  }) {
    return _then(_value.copyWith(
      servers: null == servers
          ? _value.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<Server>,
      laoding: null == laoding
          ? _value.laoding
          : laoding // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerStateCopyWith<$Res>
    implements $ServerStateCopyWith<$Res> {
  factory _$$_ServerStateCopyWith(
          _$_ServerState value, $Res Function(_$_ServerState) then) =
      __$$_ServerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Server> servers, bool laoding});
}

/// @nodoc
class __$$_ServerStateCopyWithImpl<$Res>
    extends _$ServerStateCopyWithImpl<$Res, _$_ServerState>
    implements _$$_ServerStateCopyWith<$Res> {
  __$$_ServerStateCopyWithImpl(
      _$_ServerState _value, $Res Function(_$_ServerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servers = null,
    Object? laoding = null,
  }) {
    return _then(_$_ServerState(
      servers: null == servers
          ? _value._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<Server>,
      laoding: null == laoding
          ? _value.laoding
          : laoding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ServerState implements _ServerState {
  const _$_ServerState(
      {required final List<Server> servers, required this.laoding})
      : _servers = servers;

  final List<Server> _servers;
  @override
  List<Server> get servers {
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servers);
  }

  @override
  final bool laoding;

  @override
  String toString() {
    return 'ServerState(servers: $servers, laoding: $laoding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerState &&
            const DeepCollectionEquality().equals(other._servers, _servers) &&
            (identical(other.laoding, laoding) || other.laoding == laoding));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_servers), laoding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerStateCopyWith<_$_ServerState> get copyWith =>
      __$$_ServerStateCopyWithImpl<_$_ServerState>(this, _$identity);
}

abstract class _ServerState implements ServerState {
  const factory _ServerState(
      {required final List<Server> servers,
      required final bool laoding}) = _$_ServerState;

  @override
  List<Server> get servers;
  @override
  bool get laoding;
  @override
  @JsonKey(ignore: true)
  _$$_ServerStateCopyWith<_$_ServerState> get copyWith =>
      throw _privateConstructorUsedError;
}
