import 'package:e_commerce_flower_app/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({Key? key,
    required this.icon,
    this.backgroundColor = const Color(0xFFfcf4e4),
    this.iconColor = const Color(0xFF756d54),
    this.size = 40
  }) : super(key: key);

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: Dimensions.iconSize16,
      ),
    );
  }
}
