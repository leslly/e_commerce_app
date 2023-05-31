import 'package:e_commerce_flower_app/utils/dimensions.dart';
import 'package:e_commerce_flower_app/utils/small_text.dart';
import 'package:flutter/cupertino.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({Key? key,
    required this.text,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimensions.iconSize24),
        SizedBox(width: 5),
        SmallText(text: text)
      ],
    );
  }
}
