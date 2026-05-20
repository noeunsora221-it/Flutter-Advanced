import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider_example/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get count => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
