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
      body: SingleChildScrollView(
        child: ExpansionPanelList(
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
      ),
    );
  }
}
