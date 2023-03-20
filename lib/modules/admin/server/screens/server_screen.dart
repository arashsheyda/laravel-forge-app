import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/styles/borders.dart';
import 'package:forge/core/shared/widgets/card_item.dart';
import 'package:forge/modules/admin/server/cubit/server_cubit.dart';

class ServerScreen extends StatelessWidget {
  const ServerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/server/create'),
                  child: const Text(
                    'Create Server',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: borderRadius,
                          color: Colors.transparent,
                        ),
                        child: IconButton(
                          constraints: const BoxConstraints(
                            minWidth: 0,
                            minHeight: 0,
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.list),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: borderRadius,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          constraints: const BoxConstraints(
                            minWidth: 0,
                            minHeight: 0,
                          ),
                          icon: const Icon(Icons.grid_view),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<ServerCubit, ServerState>(
                bloc: context.read<ServerCubit>()..fetchServers(),
                builder: (context, state) {
                  return RefreshIndicator(
                    onRefresh: () async =>
                        context.read<ServerCubit>().fetchServers(),
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemCount: state.servers.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        var server = state.servers[index];
                        return CardItem(
                          title: state.servers[index].name,
                          leading: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/188/188109.png',
                          ),
                          subtitle: server.region,
                          description: server.ip_address,
                          onTap: () => Navigator.of(context).pushNamed(
                              '/server/detail',
                              arguments: server.id),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
