import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/core/shared/widgets/table.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:forge/modules/admin/server/modules/key/cubit/key_cubit.dart';

class KeyScreen extends StatelessWidget {
  final int serverId;
  const KeyScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/server/detail/key/create',
            arguments: serverId,
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBarWidget(
        title: 'SSH Keys',
        color: [colorSecondary, colorPrimary],
      ),
      body: BlocBuilder<KeyCubit, KeyState>(
        bloc: context.read<KeyCubit>()..fetchAll(serverId: serverId),
        builder: (context, state) {
          if (state.pending) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return TableWidget(
            columns: const [
              'name',
              'username',
              'status',
              'created_at',
            ],
            rows: state.keys
                .map((item) => {
                      'name': item.name,
                      'status': item.status,
                      'username': item.username,
                      'created_at': item.created_at,
                    })
                .toList(),
          );
        },
      ),
    );
  }
}
