import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/auth_provider.dart';
import 'package:provider_example/cart_provider.dart';
import 'package:provider_example/theme_provider.dart';

class AuthProvider extends ChangeNotifier {
  bool _isloggin = false;
  bool get isloggin => _isloggin;

  void login() {
    _isloggin = true;
    notifyListeners();
  }
}
