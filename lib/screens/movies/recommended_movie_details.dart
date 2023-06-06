import 'package:e_commerce_flower_app/utils/scrollable_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/app_icon.dart';
import '../../utils/big_text.dart';
import '../../utils/dimensions.dart';

class RecommendedMovieDetails extends StatelessWidget {
  const RecommendedMovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
     backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Center(
                    child: BigText(text: "Love in Bellingham", size: Dimensions.font26),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: CupertinoColors.white,
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.grey,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/eleven.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    child: ScrollableWidget( text: "Duis et dolor malesuada, tincidunt turpis quis, euismod eros. Quisque hendrerit augue vitae eros luctus molestie. Curabitur sagittis, ante eu ornare gravida, urna enim fermentum tortor, ac venenatis eros ligula efficitur justo. Pellentesque ac enim quis nulla viverra finibus. Suspendisse auctor, dolor sit amet tempor interdum, tellus nibh congue metus, nec egestas tortor eros at mi. Duis semper finibus orci in congue. Vivamus iaculis luctus metus, non malesuada urna viverra quis. Aliquam sagittis ut ipsum quis tempus. Nullam tempus turpis non ante semper auctor. Proin eleifend tellus quis massa placerat, nec efficitur nibh feugiat. Sed non dolor massa. Aliquam massa lorem, ultricies vel tortor sed, interdum sollicitudin justo. Vivamus neque tortor, interdum vitae sapien non, fermentum varius dui. Nunc mauris elit, interdum vitae commodo non, varius sit amet orci. Curabitur vel suscipit arcu, vel porta orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec nec neque pellentesque, fringilla elit ac, fermentum justo. Vestibulum leo neque, lacinia vitae pulvinar eget, pretium sed felis. Nunc ac tempus enim. Vivamus suscipit ante in augue accumsan semper. Duis et dolor malesuada, tincidunt turpis quis, euismod eros. Quisque hendrerit augue vitae eros luctus molestie. Curabitur sagittis, ante eu ornare gravida, urna enim fermentum tortor, ac venenatis eros ligula efficitur justo. Pellentesque ac enim quis nulla viverra finibus. Suspendisse auctor, dolor sit amet tempor interdum, tellus nibh congue metus, nec egestas tortor eros at mi. Duis semper finibus orci in congue. Vivamus iaculis luctus metus, non malesuada urna viverra quis. Aliquam sagittis ut ipsum quis tempus. Nullam tempus turpis non ante semper auctor. Proin eleifend tellus quis massa placerat, nec efficitur nibh feugiat. Sed non dolor massa. Aliquam massa lorem, ultricies vel tortor sed, interdum sollicitudin justo. Vivamus neque tortor, interdum vitae sapien non, fermentum varius dui. Nunc mauris elit, interdum vitae commodo non, varius sit amet orci. Curabitur vel suscipit arcu, vel porta orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec nec neque pellentesque, fringilla elit ac, fermentum justo. Vestibulum leo neque, lacinia vitae pulvinar eget, pretium sed felis. Nunc ac tempus enim. Vivamus suscipit ante in augue accumsan semper. Duis et dolor malesuada, tincidunt turpis quis, euismod eros. Quisque hendrerit augue vitae eros luctus molestie. Curabitur sagittis, ante eu ornare gravida, urna enim fermentum tortor, ac venenatis eros ligula efficitur justo. Pellentesque ac enim quis nulla viverra finibus. Suspendisse auctor, dolor sit amet tempor interdum, tellus nibh congue metus, nec egestas tortor eros at mi. Duis semper finibus orci in congue. Vivamus iaculis luctus metus, non malesuada urna viverra quis. Aliquam sagittis ut ipsum quis tempus. Nullam tempus turpis non ante semper auctor. Proin eleifend tellus quis massa placerat, nec efficitur nibh feugiat. Sed non dolor massa. Aliquam massa lorem, ultricies vel tortor sed, interdum sollicitudin justo. Vivamus neque tortor, interdum vitae sapien non, fermentum varius dui. Nunc mauris elit, interdum vitae commodo non, varius sit amet orci. Curabitur vel suscipit arcu, vel porta orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec nec neque pellentesque, fringilla elit ac, fermentum justo. Vestibulum leo neque, lacinia vitae pulvinar eget, pretium sed felis. Nunc ac tempus enim. Vivamus suscipit ante in augue accumsan semper. Duis et dolor malesuada, tincidunt turpis quis, euismod eros. Quisque hendrerit augue vitae eros luctus molestie. Curabitur sagittis, ante eu ornare gravida, urna enim fermentum tortor, ac venenatis eros ligula efficitur justo. Pellentesque ac enim quis nulla viverra finibus. Suspendisse auctor, dolor sit amet tempor interdum, tellus nibh congue metus, nec egestas tortor eros at mi. Duis semper finibus orci in congue. Vivamus iaculis luctus metus, non malesuada urna viverra quis. Aliquam sagittis ut ipsum quis tempus. Nullam tempus turpis non ante semper auctor. Proin eleifend tellus quis massa placerat, nec efficitur nibh feugiat. Sed non dolor massa. Aliquam massa lorem, ultricies vel tortor sed, interdum sollicitudin justo. Vivamus neque tortor, interdum vitae sapien non, fermentum varius dui. Nunc mauris elit, interdum vitae commodo non, varius sit amet orci. Curabitur vel suscipit arcu, vel porta orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec nec neque pellentesque, fringilla elit ac, fermentum justo. Vestibulum leo neque, lacinia vitae pulvinar eget, pretium sed felis. Nunc ac tempus enim. Vivamus suscipit ante in augue accumsan semper." ),
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              AppIcon(
                icon: Icons.remove,
                iconColor: CupertinoColors.white,
                backgroundColor: CupertinoColors.black,
                iconSize: Dimensions.iconSize24,
              ),
              BigText(text: "\$12.88 X 0", size: Dimensions.font26,),
              AppIcon(
                icon: Icons.add,
                iconColor: CupertinoColors.white,
                backgroundColor: CupertinoColors.black,
                iconSize: Dimensions.iconSize24,
              ),
            ],),
          ),
          Container(
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
                //// Favourite button
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white
                  ),
                  child: IconButton(
                    onPressed: () {
                      //_colorOfIcon ? Icons.favorite_border_outlined : Icons.favorite_outlined;
                    },
                    icon: Icon(Icons.favorite_border_outlined),
                    color: Colors.pink,
                  ),
                ),
                ///// Add to cart button
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
        ],
      ),
    );
  }
}
