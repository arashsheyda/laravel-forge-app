// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deployment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Deployment _$$_DeploymentFromJson(Map<String, dynamic> json) =>
    _$_Deployment(
      id: json['id'] as int,
      site_id: json['site_id'] as int,
      server_id: json['server_id'] as int,
      type: json['type'] as int,
      commit_hash: json['commit_hash'] as String,
      commit_author: json['commit_author'] as String,
      commit_message: json['commit_message'] as String,
      started_at: json['started_at'] as String,
      ended_at: json['ended_at'] as String,
      status: json['status'] as String,
      displayable_type: json['displayable_type'] as String,
    );

Map<String, dynamic> _$$_DeploymentToJson(_$_Deployment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'site_id': instance.site_id,
      'server_id': instance.server_id,
      'type': instance.type,
      'commit_hash': instance.commit_hash,
      'commit_author': instance.commit_author,
      'commit_message': instance.commit_message,
      'started_at': instance.started_at,
      'ended_at': instance.ended_at,
      'status': instance.status,
      'displayable_type': instance.displayable_type,
    };
