import 'package:flutter/material.dart';
import 'package:forge/core/styles/borders.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/modules/auth/cubit/auth_cubit.dart';
// import 'package:flutter_gen/gen_l10n/app_localization.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _tokenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to Forge !',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'easy to use, secure, and free.',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _tokenController,
                  decoration: InputDecoration(
                    labelText: 'Token',
                    fillColor: Colors.grey.withOpacity(0.1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: borderRadius,
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
                  return Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            context
                                .read<AuthCubit>()
                                .login(_tokenController.text)
                                .then((value) => {
                                      if (state.token != null)
                                        {
                                          Navigator.of(context)
                                              .pushReplacementNamed('/')
                                        }
                                    });
                          },
                          child: const Text('Login'),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
