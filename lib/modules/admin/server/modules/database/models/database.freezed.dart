// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Database _$DatabaseFromJson(Map<String, dynamic> json) {
  return _Database.fromJson(json);
}

/// @nodoc
mixin _$Database {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatabaseCopyWith<Database> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseCopyWith<$Res> {
  factory $DatabaseCopyWith(Database value, $Res Function(Database) then) =
      _$DatabaseCopyWithImpl<$Res, Database>;
  @useResult
  $Res call({int id, String name, String status, String created_at});
}

/// @nodoc
class _$DatabaseCopyWithImpl<$Res, $Val extends Database>
    implements $DatabaseCopyWith<$Res> {
  _$DatabaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatabaseCopyWith<$Res> implements $DatabaseCopyWith<$Res> {
  factory _$$_DatabaseCopyWith(
          _$_Database value, $Res Function(_$_Database) then) =
      __$$_DatabaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String status, String created_at});
}

/// @nodoc
class __$$_DatabaseCopyWithImpl<$Res>
    extends _$DatabaseCopyWithImpl<$Res, _$_Database>
    implements _$$_DatabaseCopyWith<$Res> {
  __$$_DatabaseCopyWithImpl(
      _$_Database _value, $Res Function(_$_Database) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? created_at = null,
  }) {
    return _then(_$_Database(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$_Database extends _Database {
  const _$_Database(
      {required this.id,
      required this.name,
      required this.status,
      required this.created_at})
      : super._();

  factory _$_Database.fromJson(Map<String, dynamic> json) =>
      _$$_DatabaseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String created_at;

  @override
  String toString() {
    return 'Database(id: $id, name: $name, status: $status, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Database &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatabaseCopyWith<_$_Database> get copyWith =>
      __$$_DatabaseCopyWithImpl<_$_Database>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatabaseToJson(
      this,
    );
  }
}

abstract class _Database extends Database {
  const factory _Database(
      {required final int id,
      required final String name,
      required final String status,
      required final String created_at}) = _$_Database;
  const _Database._() : super._();

  factory _Database.fromJson(Map<String, dynamic> json) = _$_Database.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_DatabaseCopyWith<_$_Database> get copyWith =>
      throw _privateConstructorUsedError;
}
