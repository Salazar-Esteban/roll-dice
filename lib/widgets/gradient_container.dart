import 'package:flutter/material.dart';

// We use const when we define a variable value at compiling time
//  We use the keyword final to store data when the value is defined at run time for example after a calculation in a function call getAlignment()
const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.backgroundColors, this.children, {super.key});
  final Widget children;
  final List<Color> backgroundColors;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [...backgroundColors],
        ),
      ),
      child: Center(
        child: children,
      ),
    );
  }
}
