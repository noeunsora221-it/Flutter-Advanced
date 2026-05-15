import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300),
            Container(
              width: 430,
              height: 200,
              color: Colors.red,
              child: ButtonTheme(
                colorScheme: ColorScheme(
                  brightness: .light,
                  primary: .new(34),
                  onPrimary: .new(32),
                  secondary: .new(693),
                  onSecondary: .new(342),
                  error: .new(10),
                  onError: .from(alpha: 3, red: 5, green: 10, blue: 5),
                  surface: .new(3),
                  onSurface: .new(4),
                ),
                child: Center(
                  child: Text(
                    "State Management\n\t\t\t\t\t\t\tof Flutter",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 330,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Junior Mobile Apps Development",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
