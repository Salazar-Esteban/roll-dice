import 'package:flutter/material.dart';
import 'package:roll_dice_app/helpers/math/get_random.dart';

int minDice = 1;
int maxDice = 6;
double diceHeight = 200;
double diceWidth = 200;

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int diceNumber = 1;

  void rollDiceHandler() {
    setState(() {
      diceNumber = getRandomNumber(minDice, maxDice);
    });
  }

  @override
  Widget build(BuildContext context) {
    var dice = 'assets/images/dice-$diceNumber.png';
    return Container(
      decoration: const BoxDecoration(),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            dice,
            height: diceHeight,
            width: diceWidth,
          ),
          IconButton(
            onPressed: rollDiceHandler,
            icon: const Icon(
              Icons.handshake,
              color: Colors.white,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
