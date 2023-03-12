import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:forge/modules/admin/server/modules/site/router/site_arguments.dart';
import 'package:forge/modules/admin/server/modules/site/modules/deployment/cubit/deployment_cubit.dart';
import 'package:flutter_highlight/flutter_highlight.dart';

class DeploymentScreen extends StatefulWidget {
  final SiteDetailArguments arguments;
  const DeploymentScreen({super.key, required this.arguments});

  @override
  State<DeploymentScreen> createState() => _DeploymentScreenState();
}

class _DeploymentScreenState extends State<DeploymentScreen> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deployment ${widget.arguments.siteId}'),
      ),
      body: Column(
        children: [
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _isExpanded = !isExpanded;
              });
              context
                  .read<DeploymentCubit>()
                  .fetchScript(arguments: widget.arguments);
            },
            children: [
              ExpansionPanel(
                isExpanded: _isExpanded,
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text('Script'),
                  );
                },
                body: BlocBuilder<DeploymentCubit, DeploymentState>(
                  buildWhen: (previous, current) =>
                      previous.script != current.script,
                  builder: (context, state) {
                    if (state.pending) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: HighlightView(
                        state.script.isNotEmpty ? state.script : 'no script',
                        language: 'bash',
                        theme: githubTheme,
                        padding: const EdgeInsets.all(10),
                        textStyle: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Flexible(
            child: BlocBuilder<DeploymentCubit, DeploymentState>(
              bloc: context.read<DeploymentCubit>()
                ..fetchHistory(arguments: widget.arguments),
              buildWhen: (previous, current) =>
                  previous.history != current.history,
              builder: (context, state) {
                if (state.pending) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DataTable(
                      columns: const [
                        DataColumn(label: Text('When')),
                        DataColumn(label: Text('Initiated By')),
                        DataColumn(label: Text('Branch')),
                        DataColumn(label: Text('Commit')),
                        DataColumn(label: Text('Duration')),
                        DataColumn(label: Text('Status')),
                        DataColumn(
                          label: Text('Action'),
                        ),
                      ],
                      rows: [
                        for (var item in state.history)
                          DataRow(
                            cells: [
                              DataCell(
                                Text(item.started_at),
                              ),
                              DataCell(
                                Text(item.commit_author),
                              ),
                              DataCell(
                                Text(item.status),
                              ),
                              DataCell(
                                Text(item.status),
                              ),
                              DataCell(
                                Text(item.status),
                              ),
                              DataCell(
                                Text(item.status),
                              ),
                              DataCell(
                                IconButton(
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
