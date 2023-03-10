part of 'deployment_cubit.dart';

@freezed
class DeploymentState with _$DeploymentState {
  const factory DeploymentState({
    required String script,
    required bool pending,
  }) = _DeploymentState;

  factory DeploymentState.initial() => const DeploymentState(
        script: '',
        pending: true,
      );
}
