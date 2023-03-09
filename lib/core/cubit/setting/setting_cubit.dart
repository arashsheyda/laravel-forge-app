import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.dart';
part 'setting_cubit.g.dart';
part 'setting_cubit.freezed.dart';

class SettingCubit extends Cubit<SettingState> with HydratedMixin {
  SettingCubit() : super(SettingState.initial());

  void setOnboarding() {
    emit(state.copyWith(onboarding: !state.onboarding));
  }

  void setLocale(String locale) {
    if (locale != state.locale) return emit(state.copyWith(locale: locale));
  }

  @override
  SettingState fromJson(Map<String, dynamic> json) {
    return SettingState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(SettingState state) {
    return state.toJson();
  }
}
