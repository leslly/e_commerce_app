import 'package:e_commerce_flower_app/utils/app_column.dart';
import 'package:e_commerce_flower_app/utils/app_icon.dart';
import 'package:e_commerce_flower_app/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/big_text.dart';
import '../../utils/scrollable_text_widget.dart';

class PopularMovieDetails extends StatelessWidget {
  const PopularMovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularMovieImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/six.jpg"
                    ),
                  ),
                ),
              ),
          ),
          // icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_outlined),
            ],
          )),
          // details
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularMovieImgSize - 20,
            child: Container(
            padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(bigText: "Smile"),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Introduction"),
                  Expanded(
                      child: ScrollableWidget(
                          text: 'Duis et dolor malesuada, tincidunt turpis quis, euismod eros. Quisque hendrerit augue vitae eros luctus molestie. Curabitur sagittis, ante eu ornare gravida, urna enim fermentum tortor, ac venenatis eros ligula efficitur justo. Pellentesque ac enim quis nulla viverra finibus. Suspendisse auctor, dolor sit amet tempor interdum, tellus nibh congue metus, nec egestas tortor eros at mi. Duis semper finibus orci in congue. Vivamus iaculis luctus metus, non malesuada urna viverra quis. Aliquam sagittis ut ipsum quis tempus. Nullam tempus turpis non ante semper auctor. Proin eleifend tellus quis massa placerat, nec efficitur nibh feugiat. Sed non dolor massa. Aliquam massa lorem, ultricies vel tortor sed, interdum sollicitudin justo. Vivamus neque tortor, interdum vitae sapien non, fermentum varius dui. Nunc mauris elit, interdum vitae commodo non, varius sit amet orci. Curabitur vel suscipit arcu, vel porta orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec nec neque pellentesque, fringilla elit ac, fermentum justo. Vestibulum leo neque, lacinia vitae pulvinar eget, pretium sed felis. Nunc ac tempus enim. Vivamus suscipit ante in augue accumsan semper.')),
                ],
              ),
          ),
          ),
          // scrollable widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottamHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
              color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Colors.black),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(Icons.add, color: Colors.black),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.black
              ),
              child: BigText(text: "\$10 | Add to cart", color: CupertinoColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
