import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:forge/modules/admin/server/modules/key/cubit/key_cubit.dart';
import 'package:forge/modules/admin/server/modules/key/models/create_key.dart';

class KeyCreatScreen extends StatefulWidget {
  final int serverId;
  const KeyCreatScreen({super.key, required this.serverId});

  @override
  State<KeyCreatScreen> createState() => _KeyCreatScreenState();
}

class _KeyCreatScreenState extends State<KeyCreatScreen> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController(text: 'My SSH Key');
  final username = TextEditingController(text: 'forge');
  final key = TextEditingController(text: 'test');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create SSH Key'),
      ),
      body: Form(
        key: _formKey,
        // TODO: add validation and other stuff
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: name,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'My SSH Key',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: username,
              decoration: const InputDecoration(
                labelText: 'User',
                hintText: 'forge',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: key,
              decoration: const InputDecoration(
                labelText: 'Public Key',
                hintText:
                    'ssh-rsa AAAAB3NzaC1yc2EA... ahmetbarut@ahmets-macbook-pro.local',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final form = _formKey.currentState;
                if (form != null && form.validate()) {
                  // TODO: test it, somehow the server not working for now
                  context.read<KeyCubit>().createOne(
                          dto: CreateKeyDto(
                        serverId: widget.serverId,
                        name: name.text,
                        username: username.text,
                        key: key.text,
                      ));
                }
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}
