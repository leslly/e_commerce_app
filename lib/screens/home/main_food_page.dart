import 'package:e_commerce_flower_app/utils/big_text.dart';
import 'package:e_commerce_flower_app/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/small_text.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("current height is" + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: 'Nigeria', color: Colors.deepPurple,),
                      Row(
                        children: [
                          SmallText(text: 'Cross River', color: Colors.black,),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: Dimensions.width45,
                      height: Dimensions.height45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Colors.pinkAccent,
                    ),
                    child: Icon( Icons.search_sharp, color: CupertinoColors.white, size: Dimensions.iconSize24),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
              child: SingleChildScrollView(
                  child: FoodPageBody(),
              ),
          ),
        ],
      ),
    );
  }
}
