part of 'key_cubit.dart';

@freezed
class KeyState with _$KeyState {
  const factory KeyState({
    required List keys,
    required bool pending,
  }) = _KeyState;

  factory KeyState.initial() => const KeyState(
        keys: [],
        pending: true,
      );
}
