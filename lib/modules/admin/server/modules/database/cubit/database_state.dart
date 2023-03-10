part of 'database_cubit.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState({
    required List databases,
  }) = _DatabaseState;

  factory DatabaseState.initial() => const DatabaseState(
        databases: [],
      );
}
