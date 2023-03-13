import 'package:flutter/material.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/core/styles/colors.dart';

class KeyCreatScreen extends StatefulWidget {
  final int serverId;
  const KeyCreatScreen({super.key, required this.serverId});

  @override
  State<KeyCreatScreen> createState() => _KeyCreatScreenState();
}

class _KeyCreatScreenState extends State<KeyCreatScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Create SSH Key',
        color: [colorSecondary, colorPrimary],
      ),
      body: Form(
        key: _formKey,
        // TODO: add validation and other stuff
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              initialValue: 'My SSH Key',
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'My SSH Key',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: 'forge',
              decoration: const InputDecoration(
                labelText: 'User',
                hintText: 'forge',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: 'test',
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
                if (form != null && form.validate()) {}
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}
