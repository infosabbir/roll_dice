import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() => runApp(DevicePreview(builder: (context) => const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GradientContainer(),
    );
  }
}
