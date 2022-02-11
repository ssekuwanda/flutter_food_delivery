import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/colors.dart';
import 'package:flutter_food_delivery_app/utils/dimensions.dart';
import 'package:flutter_food_delivery_app/widgets/app_icon.dart';
import 'package:flutter_food_delivery_app/widgets/big_text.dart';
import 'package:flutter_food_delivery_app/widgets/expandable_text_widget.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            pinned: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
                child: Center(
                  child: BigText(
                    text: "Chinese Side",
                    size: Dimensions.font26,
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
              ),
            ),
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/image1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: ExpandableTextWidget(
                      text:
                          "This is chicken This is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meant meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meant  for eating in This is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating in the dark This is chicken meantThis is chicken meant  for eating inThis is chicken meant  for eating in the dark This is chicken meant This is chicken meant  for eating in the dark This is chicken meanttheThis is chicken meant  for eating in the dark This is chicken meant darkThis is chicken meant  for eating in the dark This is chicken meant ThisThis is chicken meant  for eating in the dark This is chicken meant is chicken meantthe dark This is chicken meant for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the darkThis is chicken meant for eating in the darkThis is chicken meant for eating in the dark for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the darkThis is chicken meant for eating in the darkThis is chicken meant for eating in the dark for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the darkThis is chicken meant for eating in the darkThis is chicken meant for eating in the dark for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the darkThis is chicken meant for eating in the darkThis is chicken meant for eating in the dark for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the darkThis is chicken meant for eating in the darkThis is chicken meant for eating in the darkfor eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the dark This is chicken meant for eating in the darkThis is chicken meant for eating in the darkThis is chicken meant for eating in the dark"),
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
              bottom: Dimensions.height10,
              top: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(
                  text: "\$12.88 " + "X" + " 0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius20,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(Dimensions.height20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            Dimensions.radius20,
                          ),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  child:
                      BigText(text: "\$10 | Add to Cart", color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
