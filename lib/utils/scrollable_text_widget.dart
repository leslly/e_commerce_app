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
  // The lat keyword is used to declare variables hat will be initialised later
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if(widget.text.length > textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt() + 1, widget.text.length);
      /* The subString function basically tell the the firsthalf and
      second half of the text where to stop.

      Else, when the text is not that long, the second half is empty.
      the text being expanded depends on the maxlines of the firsthalf*/
    }else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty ? SmallText(text: firstHalf, size: Dimensions.font16,) : Column(
        children: [
          SmallText(text: hiddenText ? ("$firstHalf...") : (firstHalf + secondHalf), size: Dimensions.font16, height: 1.8,),
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
