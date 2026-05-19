import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/signIn_controller.dart';

class SiginScreen extends StatelessWidget {
  const SiginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInController controller = Get.put(SignInController());
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Sign IN GET_X")),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Obx(() {
            // Homescreen after login
            if (controller.login.value) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to Admin!",
                      style: TextStyle(fontSize: 30, color: Colors.red),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: controller.signOut,
                      child: Text("Sign Out"),
                    ),
                  ],
                ),
              );
            }

            return Center(
              child: Column(
                children: [
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  controller.loading.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            controller.SignIn(email.text, password.text);
                          },
                          child: Text("Sign In"),
                        ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
