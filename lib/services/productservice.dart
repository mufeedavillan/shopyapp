import 'dart:convert';
import 'package:ecommerceapp/models/productmodel.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static const String apiUrl = 'https://fakestoreapi.com/products/';

  Future<List<ProductModel>> getAllProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {

      print("I am here");
      final List<dynamic> jsonResponse = json.decode(response.body);
      print(response.body);
      List<ProductModel> products = jsonResponse
          .map((json) => ProductModel.fromJson(json))
          .toList();

      print(products);
      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }
}




