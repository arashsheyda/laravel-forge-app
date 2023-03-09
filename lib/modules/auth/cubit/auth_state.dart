part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? token,
    String? error,
    User? user,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState();

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
