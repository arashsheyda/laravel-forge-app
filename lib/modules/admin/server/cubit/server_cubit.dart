import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forge/modules/admin/server/models/server.dart';
import 'package:forge/modules/admin/server/cubit/server_repository.dart';

part 'server_state.dart';
part 'server_cubit.freezed.dart';

class ServerCubit extends Cubit<ServerState> {
  ServerRepository repository;
  ServerCubit(this.repository) : super(ServerState.initial());

  fetchServers() async {
    try {
      final servers = await repository.fetchAll();
      emit(state.copyWith(servers: servers));
    } catch (e) {
      rethrow;
    }
  }

  fetchServer({required int serverId}) async {
    if (state.server?.id == serverId) return;
    emit(state.copyWith(server: null));
    try {
      final server = await repository.fetchOne(serverId: serverId);
      emit(state.copyWith(server: server));
    } catch (e) {
      rethrow;
    }
  }
}
