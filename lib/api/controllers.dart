import 'package:flutter_food_delivery_app/api/services.dart';
import 'package:flutter_food_delivery_app/models/products_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products as List<Product>;
      print(productList);
    }
  }
}
