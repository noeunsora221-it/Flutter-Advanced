import 'package:advance_flutter/bloc/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("lOGIN Bloc")),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: BlocConsumer(
          listener: (context, state) => {
            // Succesfully message
            if (state is LoginLoadingState)
              {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Login succesfully...!")),
                ),
              }
            else if (state is LoginError)
              {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Invalid email and password...!"),
                  ),
                ),
              },

            // Failure or Error handler
          },
          builder: (context, state) {
            if (state is LoginLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            return Column(
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                    ),
                  ),
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",

                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                state is LoginLoadingState
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          context.read<LoginBloc>().add(
                            LoginButtonPressed(
                              username: emailController.text,
                              password: passwordController.text,
                            ),
                          );
                        },
                        child: Text("Login"),
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}
