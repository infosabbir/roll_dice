import 'dart:math';

import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var currentIndex = 1;

  void rollDice() {
    setState(() {
      int newIndex;
      do {
        newIndex = Random().nextInt(6) + 1;
      } while (newIndex == currentIndex);
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'images/dice-$currentIndex.png',
            width: 200,
          ),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: () {
              rollDice();
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            label: Text('RollDice $currentIndex'),
          ),
        ],
      ),
    );
  }
}
