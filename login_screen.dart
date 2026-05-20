import 'package:flutter/material.dart';
import 'auth_Provider.dart';
import 'package:provider/provider.dart';
import 'auth_Provider.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authprovider = Provider.of<AuthProvider>(context);
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Authentications login",
          style: TextStyle(
            fontSize: 23,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(
                  child: Text(
                    "Provider as Authentications",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),

              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  authprovider.logout();
                  Navigator.pop(context);
                },
                child: Text("lOGOUT"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
