part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    required String locale,
    required bool onboarding,
  }) = _SettingState;

  factory SettingState.initial() => const SettingState(
        locale: 'en',
        onboarding: true,
      );

  factory SettingState.fromJson(Map<String, dynamic> json) =>
      _$SettingStateFromJson(json);
}
