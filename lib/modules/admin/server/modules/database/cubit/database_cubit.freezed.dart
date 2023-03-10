// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatabaseState {
  List<dynamic> get databases => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DatabaseStateCopyWith<DatabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseStateCopyWith<$Res> {
  factory $DatabaseStateCopyWith(
          DatabaseState value, $Res Function(DatabaseState) then) =
      _$DatabaseStateCopyWithImpl<$Res, DatabaseState>;
  @useResult
  $Res call({List<dynamic> databases});
}

/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res, $Val extends DatabaseState>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? databases = null,
  }) {
    return _then(_value.copyWith(
      databases: null == databases
          ? _value.databases
          : databases // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatabaseStateCopyWith<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  factory _$$_DatabaseStateCopyWith(
          _$_DatabaseState value, $Res Function(_$_DatabaseState) then) =
      __$$_DatabaseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> databases});
}

/// @nodoc
class __$$_DatabaseStateCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$_DatabaseState>
    implements _$$_DatabaseStateCopyWith<$Res> {
  __$$_DatabaseStateCopyWithImpl(
      _$_DatabaseState _value, $Res Function(_$_DatabaseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? databases = null,
  }) {
    return _then(_$_DatabaseState(
      databases: null == databases
          ? _value._databases
          : databases // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_DatabaseState implements _DatabaseState {
  const _$_DatabaseState({required final List<dynamic> databases})
      : _databases = databases;

  final List<dynamic> _databases;
  @override
  List<dynamic> get databases {
    if (_databases is EqualUnmodifiableListView) return _databases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_databases);
  }

  @override
  String toString() {
    return 'DatabaseState(databases: $databases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatabaseState &&
            const DeepCollectionEquality()
                .equals(other._databases, _databases));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_databases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatabaseStateCopyWith<_$_DatabaseState> get copyWith =>
      __$$_DatabaseStateCopyWithImpl<_$_DatabaseState>(this, _$identity);
}

abstract class _DatabaseState implements DatabaseState {
  const factory _DatabaseState({required final List<dynamic> databases}) =
      _$_DatabaseState;

  @override
  List<dynamic> get databases;
  @override
  @JsonKey(ignore: true)
  _$$_DatabaseStateCopyWith<_$_DatabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
