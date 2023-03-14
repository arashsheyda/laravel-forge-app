import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/modules/admin/server/modules/log/cubit/log_cubit.dart';
import 'package:forge/modules/admin/server/modules/log/router/log_arguments.dart';

class LogDetailScreen extends StatelessWidget {
  final LogDetailArguments arguments;
  const LogDetailScreen({super.key, required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: '${arguments.file} Logs',
        color: const [
          Color(0xFFf8d323),
          Color(0xFFf8af23),
          Color(0xFFf8af23),
        ],
      ),
      body: BlocBuilder<LogCubit, LogState>(
        bloc: context.read<LogCubit>()..fetchOne(arguments: arguments),
        builder: (context, state) {
          if (state.pending) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return SingleChildScrollView(
            child: Text(state.log!.content),
          );
        },
      ),
    );
  }
}
