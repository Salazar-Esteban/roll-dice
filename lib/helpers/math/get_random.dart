import 'dart:math';

Random randomizer = Random();
int getRandomNumber(int min, int max) {
  final randomNumber = randomizer.nextInt(max) + 1;
  return randomNumber;
}
