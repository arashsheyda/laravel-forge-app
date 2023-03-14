import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forge/modules/admin/server/modules/log/models/log.dart';
import 'package:forge/modules/admin/server/modules/log/router/log_arguments.dart';
import 'package:forge/modules/admin/server/modules/log/cubit/log_repository.dart';

part 'log_state.dart';
part 'log_cubit.freezed.dart';

class LogCubit extends Cubit<LogState> {
  LogRepository repository;
  LogCubit(this.repository) : super(LogState.initial());

  Future<void> fetchOne({required LogDetailArguments arguments}) async {
    try {
      emit(state.copyWith(pending: true));
      final log = await repository.fetchOne(arguments: arguments);
      emit(state.copyWith(log: log, pending: false));
    } catch (e) {
      rethrow;
    }
  }
}
