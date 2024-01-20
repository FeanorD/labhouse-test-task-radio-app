import 'package:flutter/material.dart';
import 'package:labhouse_test_task_radio_app/src/config/di/injection.dart';

void main() {
  setupDependencies();
  runApp(const RadioApp());
}

class RadioApp extends StatelessWidget {
  const RadioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Stations App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Placeholder(),
    );
  }
}
