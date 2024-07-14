import 'package:flutter/material.dart';
import 'package:roll_dice/roll_dice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.deepPurpleAccent,
            ],
          ),
        ),
        child: const RollDice(),
      ),
    );
  }
}
