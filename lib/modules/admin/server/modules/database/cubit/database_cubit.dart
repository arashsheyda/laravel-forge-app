import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forge/modules/admin/server/modules/database/cubit/database_repository.dart';

part 'database_state.dart';
part 'database_cubit.freezed.dart';

var currentServer;

class DatabaseCubit extends Cubit<DatabaseState> {
  DatabaseRepository repository;
  DatabaseCubit(this.repository) : super(DatabaseState.initial());

  Future<void> fetchAll({required int serverId}) async {
    if (state.pending || currentServer == serverId) return;
    try {
      currentServer = serverId;
      emit(state.copyWith(pending: true));
      final databases = await repository.fetchAll(serverId: serverId);
      emit(state.copyWith(databases: databases, pending: false));
    } catch (e) {
      rethrow;
    }
  }
}
