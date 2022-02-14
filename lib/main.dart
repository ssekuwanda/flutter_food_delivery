import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/data/controllers/popular_products_controller.dart';
import 'package:flutter_food_delivery_app/pages/food/popular_food_detail.dart';
import 'package:flutter_food_delivery_app/pages/home/food_page_body.dart';
import 'package:flutter_food_delivery_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'pages/food/recommended_food_detail.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainFoodPage(),
    );
  }
}
