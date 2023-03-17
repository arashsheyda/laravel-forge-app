import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/modules/admin/server/modules/key/models/create_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forge/modules/admin/server/modules/key/cubit/key_repository.dart';

part 'key_state.dart';
part 'key_cubit.freezed.dart';

var currentServer;

class KeyCubit extends Cubit<KeyState> {
  KeyRepository repository;
  KeyCubit(this.repository) : super(KeyState.initial());

  Future<void> fetchAll({required int serverId}) async {
    if (state.pending || currentServer == serverId) return;
    try {
      currentServer = serverId;
      emit(state.copyWith(pending: true));
      final keys = await repository.fetchAll(serverId: serverId);
      emit(state.copyWith(keys: keys, pending: false));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> createOne({required CreateKeyDto dto}) async {
    try {
      emit(state.copyWith(pending: true));
      final key = await repository.createOne(dto: dto);
      emit(state.copyWith(keys: [...key], pending: false));
    } catch (e) {
      print(e);
      // rethrow;
    }
  }
}
