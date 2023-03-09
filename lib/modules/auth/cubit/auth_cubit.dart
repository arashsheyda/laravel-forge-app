import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:forge/modules/auth/models/user.dart';
import 'package:forge/core/services/api_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forge/modules/auth/cubit/auth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.g.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> with HydratedMixin {
  AuthRepository repository;
  AuthCubit(this.repository) : super(AuthState.initial());

  Future<void> login(String token) async {
    try {
      final user = await repository.fetchUser(token: token);

      if (user != null) {
        emit(state.copyWith(
          token: token,
          user: user,
        ));
      }
    } catch (e) {
      // TODO: handle error
      print(e);
    }
  }

  setToken() {
    if (state.token != null) {
      ApiService.token = state.token;
    }
  }

  void logout() {
    emit(state.copyWith(token: '', user: null, error: null));
  }

  @override
  AuthState fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(AuthState state) {
    return state.toJson();
  }
}
