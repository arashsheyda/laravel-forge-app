import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/modules/admin/server/modules/database/cubit/database_cubit.dart';

class DatabaseScreen extends StatelessWidget {
  final int serverId;
  const DatabaseScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' $serverId Databases'),
      ),
      body: BlocBuilder<DatabaseCubit, DatabaseState>(
        bloc: context.read<DatabaseCubit>()..fetchAll(serverId: serverId),
        builder: (context, state) {
          if (state.pending) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              DataTable(
                columns: const [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Created At')),
                  DataColumn(
                    label: Text('Action'),
                  ),
                ],
                rows: [
                  for (var database in state.databases)
                    DataRow(
                      cells: [
                        DataCell(
                          Text(database.name),
                        ),
                        DataCell(
                          Text(database.status),
                        ),
                        DataCell(
                          Text(database.created_at),
                        ),
                        DataCell(
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          );
          // return Table(
          //   children: [
          //     const TableRow(
          //       decoration: BoxDecoration(
          //         color: Colors.grey,
          //       ),
          //       children: [
          //         Text('Name'),
          //         Text('Status'),
          //         Text('Created At'),
          //         Text('Action'),
          //       ],
          //     ),
          //     for (var database in state.databases)
          //       TableRow(
          //         decoration: BoxDecoration(
          //           color: Colors.grey[200],
          //           border: const Border(
          //             bottom: BorderSide(
          //               color: Colors.grey,
          //               width: 1,
          //             ),
          //           ),
          //         ),
          //         children: [
          //           Text(database.name),
          //           Text(database.status),
          //           Text(database.created_at),
          //           Row(
          //             children: [
          //               IconButton(
          //                 icon: const Icon(Icons.edit),
          //                 onPressed: () {},
          //               ),
          //               IconButton(
          //                 icon: const Icon(Icons.delete),
          //                 onPressed: () {},
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),
          //   ],
          // );
        },
      ),
    );
  }
}
