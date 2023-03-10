// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SiteState {
  List<Site> get sites => throw _privateConstructorUsedError;
  bool get pending => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SiteStateCopyWith<SiteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteStateCopyWith<$Res> {
  factory $SiteStateCopyWith(SiteState value, $Res Function(SiteState) then) =
      _$SiteStateCopyWithImpl<$Res, SiteState>;
  @useResult
  $Res call({List<Site> sites, bool pending});
}

/// @nodoc
class _$SiteStateCopyWithImpl<$Res, $Val extends SiteState>
    implements $SiteStateCopyWith<$Res> {
  _$SiteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sites = null,
    Object? pending = null,
  }) {
    return _then(_value.copyWith(
      sites: null == sites
          ? _value.sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<Site>,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SiteStateCopyWith<$Res> implements $SiteStateCopyWith<$Res> {
  factory _$$_SiteStateCopyWith(
          _$_SiteState value, $Res Function(_$_SiteState) then) =
      __$$_SiteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Site> sites, bool pending});
}

/// @nodoc
class __$$_SiteStateCopyWithImpl<$Res>
    extends _$SiteStateCopyWithImpl<$Res, _$_SiteState>
    implements _$$_SiteStateCopyWith<$Res> {
  __$$_SiteStateCopyWithImpl(
      _$_SiteState _value, $Res Function(_$_SiteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sites = null,
    Object? pending = null,
  }) {
    return _then(_$_SiteState(
      sites: null == sites
          ? _value._sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<Site>,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SiteState implements _SiteState {
  const _$_SiteState({required final List<Site> sites, required this.pending})
      : _sites = sites;

  final List<Site> _sites;
  @override
  List<Site> get sites {
    if (_sites is EqualUnmodifiableListView) return _sites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sites);
  }

  @override
  final bool pending;

  @override
  String toString() {
    return 'SiteState(sites: $sites, pending: $pending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SiteState &&
            const DeepCollectionEquality().equals(other._sites, _sites) &&
            (identical(other.pending, pending) || other.pending == pending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sites), pending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SiteStateCopyWith<_$_SiteState> get copyWith =>
      __$$_SiteStateCopyWithImpl<_$_SiteState>(this, _$identity);
}

abstract class _SiteState implements SiteState {
  const factory _SiteState(
      {required final List<Site> sites,
      required final bool pending}) = _$_SiteState;

  @override
  List<Site> get sites;
  @override
  bool get pending;
  @override
  @JsonKey(ignore: true)
  _$$_SiteStateCopyWith<_$_SiteState> get copyWith =>
      throw _privateConstructorUsedError;
}
