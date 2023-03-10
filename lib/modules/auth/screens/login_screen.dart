import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            opacity: 0.5,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  width: 100,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const Text(
                  'Welcome to Laravel Forge!',
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
                    labelText: 'API Token',
                    prefixIcon: const Icon(Icons.lock),
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
