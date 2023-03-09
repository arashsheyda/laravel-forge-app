import 'package:flutter/material.dart';
import 'package:forge/core/styles/borders.dart';
import 'package:forge/modules/admin/server/models/server.dart';

class ServerListItem extends StatelessWidget {
  final Server server;
  const ServerListItem({super.key, required this.server});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      tileColor: Colors.white,
      trailing: IconButton(
        padding: const EdgeInsets.all(0),
        constraints: const BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        onPressed: () {},
        icon: const Icon(Icons.more_vert),
      ),
      leading: Container(
        height: 37,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Image.network(
            'https://cdn-icons-png.flaticon.com/512/188/188109.png'),
      ),
      title: Text(server.name),
      subtitle: Text(server.ip_address),
    );
  }
}
