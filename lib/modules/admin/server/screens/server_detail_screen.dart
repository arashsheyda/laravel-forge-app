import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(300),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    // Color(0xFF64ddc9),
                    Color(0xFF18b69b),
                    Color(0xFF125251),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Stack(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    title: Text(state.server!.name),
                    elevation: 0,
                  ),
                  // TODO: add monitoring
                ],
              ),
            ),
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
                  Navigator.pushNamed(context, '/server/detail/database',
                      arguments: serverId);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF18b69b),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/2232/2232189.png',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/server/detail/site',
                    arguments: serverId,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF18b69b),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/2859/2859732.png',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
