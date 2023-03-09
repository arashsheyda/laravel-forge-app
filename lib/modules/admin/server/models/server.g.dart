// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Server _$$_ServerFromJson(Map<String, dynamic> json) => _$_Server(
      id: json['id'] as int,
      credential_id: json['credential_id'] as String?,
      name: json['name'] as String,
      type: json['type'] as String,
      provider: json['provider'] as String,
      size: json['size'] as String,
      region: json['region'] as String,
      ubuntu_version: json['ubuntu_version'] as String,
      database_type: json['database_type'] as String,
      ip_address: json['ip_address'] as String,
      private_ip_address: json['private_ip_address'] as String,
      ssh_port: json['ssh_port'] as int,
      revoked: json['revoked'] as bool,
      is_ready: json['is_ready'] as bool,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$_ServerToJson(_$_Server instance) => <String, dynamic>{
      'id': instance.id,
      'credential_id': instance.credential_id,
      'name': instance.name,
      'type': instance.type,
      'provider': instance.provider,
      'size': instance.size,
      'region': instance.region,
      'ubuntu_version': instance.ubuntu_version,
      'database_type': instance.database_type,
      'ip_address': instance.ip_address,
      'private_ip_address': instance.private_ip_address,
      'ssh_port': instance.ssh_port,
      'revoked': instance.revoked,
      'is_ready': instance.is_ready,
      'created_at': instance.created_at,
    };
