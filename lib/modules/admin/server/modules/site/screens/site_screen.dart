import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/modules/admin/server/modules/site/cubit/site_cubit.dart';
import 'package:forge/modules/admin/server/modules/site/router/site_arguments.dart';

class SiteScreen extends StatelessWidget {
  final int serverId;
  const SiteScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Sites',
        color: [Color(0xFF013c8b), Color(0xFF02a2d7)],
      ),
      body: BlocBuilder<SiteCubit, SiteState>(
        bloc: context.read<SiteCubit>()..fetchSites(serverId: serverId),
        builder: (context, state) {
          if (state.pending) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return GridView.builder(
            itemCount: state.sites.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              if (!state.pending) {
                final site = state.sites[index];
                return GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/server/detail/site/detail',
                    arguments: SiteDetailArguments(
                      serverId: serverId,
                      siteId: site.id,
                    ),
                  ),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(site.name),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.code),
                            Text(site.repository ?? site.name),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        },
      ),
    );
  }
}
