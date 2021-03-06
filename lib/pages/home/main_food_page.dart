import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/api/controllers.dart';
import 'package:flutter_food_delivery_app/pages/home/food_page_body.dart';
import 'package:flutter_food_delivery_app/utils/colors.dart';
import 'package:flutter_food_delivery_app/utils/dimensions.dart';
import 'package:flutter_food_delivery_app/widgets/big_text.dart';
import 'package:flutter_food_delivery_app/widgets/small_text.dart';
import 'package:get/get.dart';

class MainFoodPage extends StatefulWidget {
  final ProductController productController = Get.put(ProductController());
  MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          BigText(
                            text: "Bangladesh",
                            color: AppColors.mainColor,
                          ),
                          Row(
                            children: [
                              SmallText(
                                text: "Kampala",
                                color: Colors.black54,
                              ),
                              const Icon(Icons.arrow_drop_down_rounded),
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          width: 45,
                          height: 45,
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius15),
                            color: AppColors.mainColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(child: FoodPageBody()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
