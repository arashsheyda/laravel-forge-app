// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Site _$$_SiteFromJson(Map<String, dynamic> json) => _$_Site(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      directroy: json['directroy'] as String,
      wildcards: json['wildcards'] as bool,
      status: json['status'] as String,
      repository: json['repository'] as String?,
      repository_provider: json['repository_provider'] as String?,
      repository_branch: json['repository_branch'] as String?,
      repository_status: json['repository_status'] as String?,
      quick_deploy: json['quick_deploy'] as bool,
      project_type: json['project_type'] as String,
      app: json['app'] as String?,
      app_status: json['app_status'] as String?,
      php_version: json['php_version'] as String,
      deployment_url: json['deployment_url'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$_SiteToJson(_$_Site instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'directroy': instance.directroy,
      'wildcards': instance.wildcards,
      'status': instance.status,
      'repository': instance.repository,
      'repository_provider': instance.repository_provider,
      'repository_branch': instance.repository_branch,
      'repository_status': instance.repository_status,
      'quick_deploy': instance.quick_deploy,
      'project_type': instance.project_type,
      'app': instance.app,
      'app_status': instance.app_status,
      'php_version': instance.php_version,
      'deployment_url': instance.deployment_url,
      'created_at': instance.created_at,
    };
