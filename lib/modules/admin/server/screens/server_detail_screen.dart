import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/core/shared/widgets/card_item.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:forge/modules/admin/server/cubit/server_cubit.dart';

class ServerDetailScreen extends StatelessWidget {
  final int serverId;
  const ServerDetailScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServerCubit, ServerState>(
      bloc: context.read<ServerCubit>()..fetchServer(serverId: serverId),
      builder: (context, state) {
        if (state.server == null) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return Scaffold(
          appBar: AppBarWidget(
            height: 300,
            title: state.server!.name,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            // TODO: add monitoring
          ),
          body: GridView(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              CardItem(
                title: 'Database',
                subtitle: 'Manage your databases',
                titleColor: Colors.white,
                subTitleColor: Colors.white,
                leading: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/2232/2232189.png',
                  color: Colors.white,
                ),
                gradient: const [Color(0xFFff9600), Color(0xFFfe3500)],
                splashColor: Colors.amber,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/server/detail/database',
                    arguments: serverId,
                  );
                },
              ),
              CardItem(
                title: 'Sites',
                subtitle: 'Manage your websites',
                titleColor: Colors.white,
                subTitleColor: Colors.white,
                leading: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/2859/2859732.png',
                  color: Colors.white,
                ),
                gradient: const [Color(0xFF013c8b), Color(0xFF02a2d7)],
                splashColor: Colors.cyan,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/server/detail/site',
                    arguments: serverId,
                  );
                },
              ),
              CardItem(
                title: 'SSH Keys',
                subtitle: 'Manage your SSH keys',
                titleColor: Colors.white,
                subTitleColor: Colors.white,
                leading: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/9883/9883072.png',
                  color: Colors.white,
                ),
                gradient: [colorSecondary, colorPrimary],
                splashColor: colorPrimary,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/server/detail/key',
                    arguments: serverId,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
