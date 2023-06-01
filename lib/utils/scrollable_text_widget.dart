import 'package:e_commerce_flower_app/utils/small_text.dart';
import 'package:flutter/material.dart';

import 'dimensions.dart';

class ScrollableWidget extends StatefulWidget {
  const ScrollableWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<ScrollableWidget> createState() => _ScrollableWidgetState();
}

class _ScrollableWidgetState extends State<ScrollableWidget> {

  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if(widget.text.length > textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    }else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty ? SmallText(text: firstHalf) : Column(
        children: [
          SmallText(text: hiddenText ? ("$firstHalf...") : (firstHalf + secondHalf)),
          InkWell(
            onTap: () {
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: "Show more", color: Colors.blue,),
                Icon(hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
