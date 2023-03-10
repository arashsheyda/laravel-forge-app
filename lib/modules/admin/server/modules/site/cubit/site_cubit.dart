import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/modules/admin/server/modules/site/models/site.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forge/modules/admin/server/modules/site/cubit/site_repository.dart';

part 'site_state.dart';
part 'site_cubit.freezed.dart';

class SiteCubit extends Cubit<SiteState> {
  SiteRepository repository;
  SiteCubit(this.repository) : super(SiteState.initial());

  fetchSites({required int serverId}) async {
    emit(state.copyWith(pending: true));
    try {
      final sites = await repository.fetchAll(serverId: serverId);
      emit(state.copyWith(sites: sites, pending: false));
    } catch (e) {
      rethrow;
    }
  }
}
