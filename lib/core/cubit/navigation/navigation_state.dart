part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    required int currentIndex,
  }) = _NavigationState;

  factory NavigationState.initial() => const NavigationState(
        currentIndex: 0,
      );
}
