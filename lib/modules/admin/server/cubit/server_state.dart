part of 'server_cubit.dart';

@freezed
class ServerState with _$ServerState {
  const factory ServerState({
    required List<Server> servers,
    Server? server,
    required bool laoding,
  }) = _ServerState;

  factory ServerState.initial() => const ServerState(
        servers: [],
        laoding: false,
      );
}
