import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';

import 'package:get_x/counter_controller.dart';
import 'package:get_x/login_screen.dart';
import 'package:get_x/sigIn_screen.dart';
import 'package:get_x/signIn_controller.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SiginScreen(),
    );
  }
}
