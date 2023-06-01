import 'package:e_commerce_flower_app/utils/small_text.dart';
import 'package:flutter/material.dart';
import 'big_text.dart';
import 'dimensions.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({Key? key, this.bigText = "Violence"}) : super(key: key);

  final String bigText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: bigText, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10),
        ///// STARS
        Row(
          children: [
            Wrap(
              children:
              List.generate(5, (index) => const Icon(Icons.star, color: Colors.red,),),
            ),
            SizedBox(width: Dimensions.width10),
            SmallText(text: '5.0'),
            SizedBox(width: Dimensions.width10),
            SmallText(text: '1797 comments'),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        ///// ICONS FOR LOCATION, TIME, STATUS
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndText(
              text: 'Excellent',
              icon: Icons.circle,
              iconColor: Colors.orangeAccent,
            ),
            IconAndText(
              text: '1.6km',
              icon: Icons.location_on,
              iconColor: Colors.blueAccent,
            ),
            IconAndText(
              text: '5mins',
              icon: Icons.access_time,
              iconColor: Colors.red,
            ),
          ],
        ),
      ],
    );
  }
}
