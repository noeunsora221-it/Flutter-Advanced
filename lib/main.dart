import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x1/home_screen.dart';
import 'home_screen.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
