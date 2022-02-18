import 'dart:convert';

import 'package:flutter_food_delivery_app/models/products_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RemoteServices extends GetxController {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    try {
      var response = await client
          .get(Uri.parse('https:mvs.bslmeiyu.com/api/v1/products/popular'));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data.map<Product>((json) => Product.fromJson(json)).toList();
      } else {
        return null;
      }
    } catch (e) {}
  }
}
