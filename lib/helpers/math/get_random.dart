import 'dart:math';

int getRandomNumber(int min, int max) {
  final ramdomNumber = Random();
  return min + ramdomNumber.nextInt(max);
}
