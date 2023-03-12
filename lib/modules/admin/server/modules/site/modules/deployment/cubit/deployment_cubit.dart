import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forge/modules/admin/server/modules/site/router/site_arguments.dart';
import 'package:forge/modules/admin/server/modules/site/modules/deployment/models/deployment.dart';
import 'package:forge/modules/admin/server/modules/site/modules/deployment/cubit/deployment_repository.dart';

part 'deployment_state.dart';
part 'deployment_cubit.freezed.dart';

class DeploymentCubit extends Cubit<DeploymentState> {
  DeploymentRepository repository;
  DeploymentCubit(this.repository) : super(DeploymentState.initial());

  fetchScript({required SiteDetailArguments arguments}) async {
    emit(state.copyWith(pending: true));
    try {
      final script = await repository.fetchScript(arguments: arguments);
      emit(state.copyWith(script: script, pending: false));
    } catch (e) {
      rethrow;
    }
  }

  fetchHistory({required SiteDetailArguments arguments}) async {
    emit(state.copyWith(pending: true));
    try {
      final history = await repository.fetchHistroy(arguments: arguments);
      emit(state.copyWith(history: history, pending: false));
    } catch (e) {
      rethrow;
    }
  }
}
