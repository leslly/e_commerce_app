import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_flower_app/utils/big_text.dart';
import 'package:e_commerce_flower_app/utils/icon_and_text.dart';
import 'package:e_commerce_flower_app/utils/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/app_column.dart';
import '../../utils/dimensions.dart';

//import '../utils/dimensions.dart';


class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {

  PageController pageController = PageController(viewportFraction: 0.85);
  
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  
  @override
  void initState() {
    super.initState();
    pageController.addListener(() { 
     setState(() {
       _currentPageValue = pageController.page! ;
       // current value = index of each page in page controller
     });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///// PAGE VIEW
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
           // physics: BouncingScrollPhysics(),
            controller: pageController,
              itemCount: 5,
              itemBuilder: (context, index) {
            return _buildPageItem(index);
          }),
        ),
    // custom color dot
    // new DotsIndicator(
    // dotsCount: 5,
    // position: _currentPageValue.toInt(),
    // decorator: DotsDecorator(
    // color: Colors.black87, // Inactive color
    // activeColor: Colors.redAccent,
    // ),
    // ),
      // use specific color for each dot
        ///// DOTS
    DotsIndicator(
    dotsCount: 5,
    position: _currentPageValue.toInt(),
    decorator: DotsDecorator(
    colors: [Colors.grey, Colors.grey, Colors.grey, Colors.grey, Colors.grey], // Inactive dot colors
    activeColors: [ Colors.pink, Colors.purple, Colors.deepPurple, Colors.deepPurpleAccent, Colors.purpleAccent ], // Àctive dot colors
      size: Size.square(9.0),
      activeSize: Size(18.0, 9.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    ),
        // POPULAR TEXT
        SizedBox(height: Dimensions.height30),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: '.', color: Colors.black26,),
              ),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: 'Natural selection',),
              ),
            ],
          ),
        ),
        // SCROLLABLE LIST
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index){
         return Container(
           margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
           child: Row(
             children: [
               ///// IMAGE SECTION
               Container(
                 width: Dimensions.listViewImgSize,
                 height: Dimensions.listViewImgSize,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(Dimensions.radius20),
                   color: Colors.white38,
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage(
                       "assets/images/three.jpg"
                     ),
                   ),
                 ),
               ),
               ///// TEXT SECTION
               Expanded(
                 child: Container(
                   height: Dimensions.listViewTextContainerSize,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       topRight: Radius.circular(Dimensions.radius20),
                       bottomRight: Radius.circular(Dimensions.radius20),
                     ),
                     color: Colors.white
                   ),
                   child: Padding(
                     padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10, top: Dimensions.height20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         BigText(text: "Spongebob SquarePants"),
                         SizedBox(height: Dimensions.height10),
                         SmallText(text: "with the best episodes from nickolodeon"),
                         SizedBox(height: Dimensions.height20),
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
                     ),
                   ),
                 ),
               ),
             ],
           ),
         );
        }),
      ],
    );
  }
///// MATRIX
 Widget _buildPageItem( int index){
    
    Matrix4 matrix = new Matrix4.identity();
    if(index == _currentPageValue.floor()){
      // floor function gives the approximate value of the scale
      var currentScale = 1 - (_currentPageValue - index) * (1- _scaleFactor);
      var currentTransformation = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTransformation, 0);
      
    } else if(index == _currentPageValue.floor()+1){
      var currentScale = _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTransformation = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTransformation, 0);

    } else if(index == _currentPageValue.floor()-1){
      var currentScale = 1 - (_currentPageValue - index) * (1- _scaleFactor);
      var currentTransformation = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currentTransformation, 0);

    }else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
      // Smooth sliding
    }
    // index start from zero but
    // current page value is 1 when the particular page view is showing,
    // regardless of the index being 20 or 5
    
    return Transform(
      transform: matrix,
      child: Stack(
       children: [
         ///// IMAGE CONTAINER
         Container(
           height: Dimensions.pageViewContainer,
           margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(Dimensions.radius30),
               color: Colors.pink.withOpacity(0.1),
               image:DecorationImage(
                 image:  AssetImage('assets/images/two.jpg'),
                 fit: BoxFit.cover,
               ),
           ),
         ),
         ///// CONTAINER WITH RATINGS
         Align(
           alignment: Alignment.bottomCenter,
           child: Container(
              height: Dimensions.pageViewTextContainer,
             margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height30),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(Dimensions.radius30),
                 color: Colors.white,
               boxShadow: const [
                 BoxShadow(
                   color: Color(0xFFe8e8e8),
                   blurRadius: 5.0,
                   offset: Offset(0, 5),
                   // -5 on the offest means the shadow will appear on the left side,
                   // 5 will make the shadow appear on the right side
                 ),
                 BoxShadow(
                   color: CupertinoColors.white,
                   offset: Offset(-5, 0),
                 ),
                 BoxShadow(
                   color: CupertinoColors.white,
                   offset: Offset(5, 0),
                 ),
               ],
             ),
             child: Container(
               padding: EdgeInsets.only(top: Dimensions.height15, left: Dimensions.width15, right: Dimensions.width15),
               child: AppColumn(),
             ),
           ),
         ),
       ],
      ),
    );
 }

}
