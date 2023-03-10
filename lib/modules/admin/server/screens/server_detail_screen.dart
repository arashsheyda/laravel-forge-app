import 'package:flutter/material.dart';

class ServerDetailScreen extends StatelessWidget {
  final int serverId;
  const ServerDetailScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Server $serverId'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/server/detail/database');
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF8EDAFE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2232/2232189.png',
                      color: const Color(0xFF012458),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
