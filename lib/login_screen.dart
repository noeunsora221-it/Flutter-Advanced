import 'package:get/get.dart';
import 'package:get_x/login_controller.dart';
import 'counter_controller.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LOGIN USING GET_X",
          style: TextStyle(
            fontSize: 25,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(25),
        child: Obx(() {
          // Homescreen after login
          if (controller.islogin.value) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to Admin!",
                    style: TextStyle(fontSize: 23, color: Colors.red),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: controller.logout,
                    child: Text("Logout"),
                  ),
                ],
              ),
            );
          }
          return Center(
            child: Column(
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                // checking controller
                controller.isloading.value
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          controller.logout();
                        },
                        child: Text("Login"),
                      ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
