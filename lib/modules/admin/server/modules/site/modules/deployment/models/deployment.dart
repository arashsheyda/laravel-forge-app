// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'deployment.freezed.dart';
part 'deployment.g.dart';

@freezed
class Deployment with _$Deployment {
  const Deployment._();
  const factory Deployment({
    required int id,
    required int site_id,
    required int server_id,
    required int type,
    required String commit_hash,
    required String commit_author,
    required String commit_message,
    required String started_at,
    required String ended_at,
    required String status,
    required String displayable_type,
  }) = _Deployment;

  factory Deployment.fromJson(Map<String, dynamic> json) =>
      _$DeploymentFromJson(json);
}
