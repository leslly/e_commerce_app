import 'package:flutter/cupertino.dart';

import 'dimensions.dart';
// A reuseable text widget
class SmallText extends StatelessWidget {
   SmallText({Key? key,
     this.size = 0,
    this.color = const Color(0xFF332d2b),
    required this.text,
     this.height = 1.2,
  }) : super(key: key);

  final Color? color;
  final String text;
  double size;
  double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: height,
        color: color,
        fontSize: size == 0 ? Dimensions.font12 : size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
