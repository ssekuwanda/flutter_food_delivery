import 'package:flutter_food_delivery_app/api/services.dart';
import 'package:flutter_food_delivery_app/models/products_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
  ProductController() {
    fetchProducts();
  }

  @override
  void onInit() {
    fetchProducts();
    print("yes");
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products;
      print(products);
    }
  }
}
