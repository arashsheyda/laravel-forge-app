// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server.freezed.dart';
part 'server.g.dart';

@freezed
class Server with _$Server {
  const Server._();
  const factory Server({
    required int id,
    int? credential_id,
    required String name,
    required String type,
    required String provider,
    required String size,
    required String region,
    required String ubuntu_version,
    required String database_type,
    required String ip_address,
    required String private_ip_address,
    required int ssh_port,
    required bool revoked,
    required bool is_ready,
    required String created_at,
  }) = _Server;

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}
