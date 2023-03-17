import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/modules/admin/server/modules/site/models/site.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forge/modules/admin/server/modules/site/cubit/site_repository.dart';

part 'site_state.dart';
part 'site_cubit.freezed.dart';

var currentServer;

class SiteCubit extends Cubit<SiteState> {
  SiteRepository repository;
  SiteCubit(this.repository) : super(SiteState.initial());

  fetchSites({required int serverId}) async {
    if (state.pending || currentServer == serverId) return;
    try {
      emit(state.copyWith(pending: true));
      currentServer = serverId;
      final sites = await repository.fetchAll(serverId: serverId);
      emit(state.copyWith(sites: sites, pending: false));
    } catch (e) {
      rethrow;
    }
  }
}
