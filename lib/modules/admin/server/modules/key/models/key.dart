// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'key.freezed.dart';
part 'key.g.dart';

@freezed
class Key with _$Key {
  const Key._();
  const factory Key({
    required int id,
    required String name,
    required String status,
    required String created_at,
    required String username,
  }) = _Key;

  factory Key.fromJson(Map<String, dynamic> json) => _$KeyFromJson(json);
}
