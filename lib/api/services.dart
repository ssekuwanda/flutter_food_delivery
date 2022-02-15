import 'dart:convert';

import 'package:flutter_food_delivery_app/models/products_model.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static Future<Product?> fetchProducts() async {
    var url = Uri.https("https:mvs.bslmeiyu.com", "/api/v1/products/popular");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonString = jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonString);
      return Product.fromJson(jsonString);
    } else {
      return null;
    }
  }
}
