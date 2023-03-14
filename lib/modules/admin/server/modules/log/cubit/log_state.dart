part of 'log_cubit.dart';

@freezed
class LogState with _$LogState {
  const factory LogState({
    String? log,
    required bool pending,
  }) = _LogState;

  factory LogState.initial() => const LogState(
        pending: true,
      );
}
