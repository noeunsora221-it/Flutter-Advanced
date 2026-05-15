import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'login_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final departmentController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mobile Apps development",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            // check validated
            if (state is LoginSuccess) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Succesfully...!")));
            }

            if (state is Loginfailure) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                // check validated username and password
                Center(
                  child: Card(
                    color: const Color.fromARGB(255, 3, 167, 27),
                    child: Text(
                      "\t\t\t\t\t\t\t\t\tLogin Bloc \nin state management",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: departmentController,
                  decoration: InputDecoration(
                    hintText: "Department",
                    labelText: "Department",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                // checking validated
                const SizedBox(height: 15),

                // calling bloc to body
                // used ternary operator
                state is LoginLoading
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          // calling bloc here
                          context.read<LoginBloc>().add(
                            LoginButtonPressed(
                              username: emailController.text,
                              password: passwordController.text,
                              department: departmentController.text,
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
