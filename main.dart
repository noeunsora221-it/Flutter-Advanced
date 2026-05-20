import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/auth_provider.dart';
import 'package:provider_example/home_screen.dart';
import 'package:provider_example/login_screen.dart';
import 'auth_Provider.dart' hide AuthProvider;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_provider.dart';
import 'login_screen.dart';

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(create: (_) => AuthProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
