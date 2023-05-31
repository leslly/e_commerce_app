import 'package:e_commerce_flower_app/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

// A reuseable text widget

class BigText extends StatelessWidget {
   BigText({Key? key,
     this.color = const Color(0xFF332d2b),
     required this.text,
     this.size = 0,
     this.overFlow = TextOverflow.fade
   }) : super(key: key);

  final Color? color;
  final String text;
   double size;
  TextOverflow overFlow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
        style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.font20 : size,
          // fontSize: size == 0 ? Dimensions.font20 : size,
          fontWeight: FontWeight.w400,
        ),
    );
  }
}
