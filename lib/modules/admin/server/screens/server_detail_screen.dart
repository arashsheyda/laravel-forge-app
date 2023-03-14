import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/shared/widgets/card_item.dart';
import 'package:forge/modules/admin/server/cubit/server_cubit.dart';
import 'package:forge/modules/admin/server/modules/log/router/log_arguments.dart';

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
          backgroundColor: const Color(0xFFF7F7F7),
          appBar: AppBarWidget(
            height: 300,
            title: state.server!.name,
            color: [
              colorThirdly,
              colorPrimary,
            ],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            shadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 13,
                offset: Offset(0, 0),
              ),
            ],
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 70),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 13,
                          offset: Offset(0, 0),
                        ),
                      ],
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF1f1f1f),
                          Color(0xFF010101),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/900/900334.png',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.server!.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              state.server!.region,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              state.server!.provider,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -20,
                    right: 50,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: GridView(
            padding: const EdgeInsets.all(20),
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              CardItem(
                title: 'Database',
                // subtitle: 'Manage your databases',
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
                // subtitle: 'Manage your websites',
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
                // subtitle: 'Manage your SSH keys',
                titleColor: Colors.white,
                subTitleColor: Colors.white,
                leading: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/9883/9883072.png',
                  color: Colors.white,
                ),
                gradient: [colorSecondary, colorPrimary],
                splashColor: colorPrimary,
                trailingItems: [
                  PopupMenuItem(
                    value: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('Create SSH'),
                        SizedBox(width: 5),
                        Icon(Icons.key),
                      ],
                    ),
                    onTap: () => Future(
                      () => Navigator.pushNamed(
                        context,
                        '/server/detail/key/create',
                        arguments: serverId,
                      ),
                    ),
                  ),
                ],
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/server/detail/key',
                    arguments: serverId,
                  );
                },
              ),
              CardItem(
                title: 'PHP',
                // subtitle: 'Manage your PHP settings',
                titleColor: Colors.white,
                subTitleColor: Colors.white,
                leading: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/2306/2306154.png',
                ),
                gradient: const [Color(0xFF777bb3), Color(0xFF484c89)],
                splashColor: Colors.purple,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/server/detail/php',
                    arguments: serverId,
                  );
                },
              ),
              CardItem(
                title: 'Nginx',
                // subtitle: 'Manage your Nginx settings',
                titleColor: Colors.white,
                subTitleColor: Colors.white,
                leading: Image.network(
                  'https://www.linux-destek.com/wp-content/Nginx-Logo-02.png',
                  color: Colors.white,
                ),
                gradient: const [Color(0xFF009900), Color(0xFF146B26)],
                splashColor: Colors.green,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/server/detail/backup',
                    arguments: serverId,
                  );
                },
              ),
              CardItem(
                title: 'Logs',
                // subtitle: 'Check your server Logs',
                titleColor: Colors.white,
                subTitleColor: Colors.white,
                leading: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/1960/1960242.png',
                  color: Colors.white,
                ),
                gradient: const [
                  Color(0xFFf8d323),
                  Color(0xFFf8af23),
                  Color(0xFFf8af23),
                ],
                trailingItems: [
                  PopupMenuItem(
                    value: 0,
                    child: const Text('Nginx Error'),
                    onTap: () => Future(
                      () => Navigator.pushNamed(
                          context, '/server/detail/log/detail',
                          arguments: LogDetailArguments(
                            serverId: serverId,
                            file: 'nginx_error',
                          )),
                    ),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: const Text('Nginx Access'),
                    onTap: () => Future(
                      () => Navigator.pushNamed(
                          context, '/server/detail/log/detail',
                          arguments: LogDetailArguments(
                            serverId: serverId,
                            file: 'nginx_access',
                          )),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: const Text('SSH Auth'),
                    onTap: () => Future(
                      () => Navigator.pushNamed(
                          context, '/server/detail/log/detail',
                          arguments: LogDetailArguments(
                            serverId: serverId,
                            file: 'auth',
                          )),
                    ),
                  ),
                ],
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/server/detail/log',
                    arguments: serverId,
                  );
                },
              ),
              CardItem(
                title: 'Backups',
                // subtitle: 'Manage your backups',
                titleColor: Colors.white,
                subTitleColor: Colors.white,
                leading: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/4240/4240718.png',
                  color: Colors.white,
                ),
                gradient: const [Color(0xFF7d4b3b), Color(0xFF4f2f25)],
                splashColor: Colors.brown,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/server/detail/backup',
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
