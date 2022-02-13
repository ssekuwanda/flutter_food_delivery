import 'package:flutter_food_delivery_app/data/api/api_client.dart';
import 'package:flutter_food_delivery_app/data/controllers/popular_products_controller.dart';
import 'package:flutter_food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:flutter_food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
