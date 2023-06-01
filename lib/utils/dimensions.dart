import 'package:get/get.dart';

class Dimensions {
 static double screenHeight = Get.context!.height;
 static double screenWidth = Get.context!.width;

 // 768 / 220 = 3.49 , where the image is
 // Since its 844 for everything else, i just use that
static double pageViewContainer = screenHeight /3.84;
// 768 / 120 = 6.4 , where the text rating are
 // Since its 844 for everything else, i just use that
static double pageViewTextContainer = screenHeight /7.03;
// copied from video, do later => 768 / 320 => not necessary anymore
static double pageView = screenHeight /2.64;

 //height size / 844
 static double height10 = screenHeight / 84.4;
 static double height80 = screenHeight / 10.5;
 static double height15 = screenHeight / 56.27;
 static double height20 = screenHeight / 42.2;
 static double height30 = screenHeight / 28.13;
 static double height45 = screenHeight / 18.76;
 static double height733 = screenHeight / 1.14;
 static double height48 = screenHeight / 17.5;
 static double height24 = screenHeight / 35.0;
 static double height120 = screenWidth  / 7.03;

 //radius size / 844
 static double radius15 = screenHeight / 56.27;
 static double radius20 = screenHeight / 42.2;
 static double radius30 = screenHeight / 25.6;

 //width size / 844
 static double width10 = screenWidth  / 84.4;
 static double width30 = screenWidth  / 25.6;
 static double width15 = screenWidth  / 56.27;
 static double width20 = screenWidth  / 42.2;
 static double width48 = screenWidth /17.5;
 static double width45 = screenHeight / 18.76;
 static double width24 = screenWidth  / 35.0;
 static double width120 = screenWidth  / 7.03;

 //font size / 844
 static double font20 = screenHeight / 42.2;
 static double font16 = screenHeight / 52.75;
 static double font13 = screenHeight / 64.9;
 static double font12 = screenHeight / 70.33;
 static double font14 = screenHeight / 60.28;
 static double font26 = screenHeight / 32.46;

 // icon size / 844
 static double iconSize24 = screenWidth  / 35.0;
 static double iconSize16 = screenWidth  / 52.75;

 // list view size
 static double listViewImgSize = screenWidth/3.25;
 static double listViewTextContainerSize = screenWidth/3.9;

 // popular movie
 static double popularMovieImgSize = screenHeight/2.41;

 // bottom height
 static double bottamHeightBar = screenHeight / 7.03;


 }