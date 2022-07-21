import 'dart:convert';
import 'package:api_4/models/top_level_data/top_layer.dart';
import 'package:http/http.dart' as https;
import 'package:http/http.dart';

class Repostory {
  // static Future<BookModel> getData() async {
  //   final response = await http.get(Uri.parse(
  //       "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=1OxU0G2PiIjFhrisbwt76JeL7bm8o1IF"));
  //   if (response.statusCode == 200) {
  //     final jsonUser = jsonDecode(response.body);
  //     return BookModel.fromJson(jsonUser);
  //   } else {
  //     throw Exception();
  //   }
  // }

  static Future<BookModel> getBookModel() async {
    try {
      Response response = await https.get(Uri.parse(
          "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=1OxU0G2PiIjFhrisbwt76JeL7bm8o1IF"));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var myDecodedJSON = jsonDecode(response.body);
        BookModel bookModel = BookModel.fromJson(myDecodedJSON);
        return bookModel;
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e);
    }
  }
}
