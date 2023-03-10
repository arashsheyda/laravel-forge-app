part of 'deployment_cubit.dart';

@freezed
class DeploymentState with _$DeploymentState {
  const factory DeploymentState({
    String? script,
  }) = _DeploymentState;

  factory DeploymentState.initial() => const DeploymentState();
}
