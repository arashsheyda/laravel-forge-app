class CreateKeyDto {
  final int serverId;
  final String name;
  final String username;
  final String key;

  CreateKeyDto({
    required this.serverId,
    required this.name,
    required this.username,
    required this.key,
  });
}
