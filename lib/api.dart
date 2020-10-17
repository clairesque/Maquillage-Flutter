import 'package:http/http.dart' as http;
import 'package:makeup_app/app/models/product_model.dart';

class Api {
  static const url = "http://makeup-api.herokuapp.com/api/v1/products.json";

  static Future<List<ProductModel>> getProductList() async {
    final response =
        await http.get('http://makeup-api.herokuapp.com/api/v1/products.json');

    if (200 == response.statusCode) {
      final List<ProductModel> productModel =
          productModelFromJson(response.body);
      print(productModel);
      return productModel;
    } else {
      return List<ProductModel>();
    }
  }

}
