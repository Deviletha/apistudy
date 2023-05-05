import 'package:apistudy/model/productmodel.dart';
import 'package:http/http.dart' as http;

class HttpService {
  // static var client = http.Client();

  static Future<List<Entry>> fetchProducts() async {

    var response = await http.get(Uri.parse("https://api.publicapis.org/entries"));

    if (response.statusCode == 200) {
      var data = response.body;
      return productsModelFromJson(data);
    } else {
      // throw Exception();
      var data = response.body;
      return productsModelFromJson(data);
    }
  }
}
