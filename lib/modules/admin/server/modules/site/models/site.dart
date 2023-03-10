// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'site.freezed.dart';
part 'site.g.dart';

@freezed
class Site with _$Site {
  const Site._();
  const factory Site({
    required int id,
    required String name,
    required String username,
    required String directroy,
    required bool wildcards,
    required String status,
    String? repository,
    String? repository_provider,
    String? repository_branch,
    String? repository_status,
    required bool quick_deploy,
    required String project_type,
    String? app,
    String? app_status,
    required String php_version,
    required String deployment_url,
    required String created_at,
  }) = _Site;

  factory Site.fromJson(Map<String, dynamic> json) => _$SiteFromJson(json);
}
