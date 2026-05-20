import 'package:flutter/material.dart';
import 'package:provider_example/counter_provider.dart';
import 'counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterProvider provider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Provider in flutter",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            Text(
              "${provider.count}",
              style: TextStyle(fontSize: 34, color: Colors.red),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.count;
        },
        child: Icon(Icons.people_outline_sharp, size: 40),
      ),
    );
  }
}
