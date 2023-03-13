import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/core/shared/widgets/table.dart';
import 'package:forge/modules/admin/server/modules/database/cubit/database_cubit.dart';

class DatabaseScreen extends StatelessWidget {
  final int serverId;
  const DatabaseScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Databases',
        color: [Color(0xFFff9600), Color(0xFFfe3500)],
      ),
      body: BlocBuilder<DatabaseCubit, DatabaseState>(
        bloc: context.read<DatabaseCubit>()..fetchAll(serverId: serverId),
        builder: (context, state) {
          if (state.pending) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return TableWidget(
            columns: const [
              'name',
              'status',
              'created_at',
            ],
            rows: state.databases
                .map((item) => {
                      'name': item.name,
                      'status': item.status,
                      'created_at': item.created_at,
                    })
                .toList(),
          );
        },
      ),
    );
  }
}
