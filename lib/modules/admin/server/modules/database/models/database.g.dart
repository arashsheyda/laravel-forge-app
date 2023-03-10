// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Database _$$_DatabaseFromJson(Map<String, dynamic> json) => _$_Database(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$_DatabaseToJson(_$_Database instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'created_at': instance.created_at,
    };
