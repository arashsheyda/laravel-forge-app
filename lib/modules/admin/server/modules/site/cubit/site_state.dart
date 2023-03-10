part of 'site_cubit.dart';

@freezed
class SiteState with _$SiteState {
  const factory SiteState({
    required List<Site> sites,
    required bool pending,
  }) = _SiteState;

  factory SiteState.initial() => const SiteState(
        sites: [],
        pending: true,
      );
}
