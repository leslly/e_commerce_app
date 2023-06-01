import 'package:flutter/cupertino.dart';

import 'dimensions.dart';
// A reuseable text widget
class SmallText extends StatelessWidget {
   SmallText({Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
     this.height = 1.2,
  }) : super(key: key);

  final Color? color;
  final String text;
  double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: height,
        color: color,
        fontSize: Dimensions.font12,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
