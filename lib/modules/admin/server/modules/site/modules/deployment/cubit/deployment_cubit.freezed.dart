// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deployment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeploymentState {
  String? get script => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeploymentStateCopyWith<DeploymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeploymentStateCopyWith<$Res> {
  factory $DeploymentStateCopyWith(
          DeploymentState value, $Res Function(DeploymentState) then) =
      _$DeploymentStateCopyWithImpl<$Res, DeploymentState>;
  @useResult
  $Res call({String? script});
}

/// @nodoc
class _$DeploymentStateCopyWithImpl<$Res, $Val extends DeploymentState>
    implements $DeploymentStateCopyWith<$Res> {
  _$DeploymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? script = freezed,
  }) {
    return _then(_value.copyWith(
      script: freezed == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeploymentStateCopyWith<$Res>
    implements $DeploymentStateCopyWith<$Res> {
  factory _$$_DeploymentStateCopyWith(
          _$_DeploymentState value, $Res Function(_$_DeploymentState) then) =
      __$$_DeploymentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? script});
}

/// @nodoc
class __$$_DeploymentStateCopyWithImpl<$Res>
    extends _$DeploymentStateCopyWithImpl<$Res, _$_DeploymentState>
    implements _$$_DeploymentStateCopyWith<$Res> {
  __$$_DeploymentStateCopyWithImpl(
      _$_DeploymentState _value, $Res Function(_$_DeploymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? script = freezed,
  }) {
    return _then(_$_DeploymentState(
      script: freezed == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DeploymentState implements _DeploymentState {
  const _$_DeploymentState({this.script});

  @override
  final String? script;

  @override
  String toString() {
    return 'DeploymentState(script: $script)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeploymentState &&
            (identical(other.script, script) || other.script == script));
  }

  @override
  int get hashCode => Object.hash(runtimeType, script);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeploymentStateCopyWith<_$_DeploymentState> get copyWith =>
      __$$_DeploymentStateCopyWithImpl<_$_DeploymentState>(this, _$identity);
}

abstract class _DeploymentState implements DeploymentState {
  const factory _DeploymentState({final String? script}) = _$_DeploymentState;

  @override
  String? get script;
  @override
  @JsonKey(ignore: true)
  _$$_DeploymentStateCopyWith<_$_DeploymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
