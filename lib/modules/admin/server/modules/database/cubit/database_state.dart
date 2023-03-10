part of 'database_cubit.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState({
    required List databases,
    required bool pending,
  }) = _DatabaseState;

  factory DatabaseState.initial() => const DatabaseState(
        databases: [],
        pending: true,
      );
}
