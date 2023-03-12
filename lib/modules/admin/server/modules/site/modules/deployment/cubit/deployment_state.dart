part of 'deployment_cubit.dart';

@freezed
class DeploymentState with _$DeploymentState {
  const factory DeploymentState({
    required String script,
    required List<Deployment> history,
    required bool pending,
  }) = _DeploymentState;

  factory DeploymentState.initial() => const DeploymentState(
        script: '',
        history: [],
        pending: true,
      );
}
