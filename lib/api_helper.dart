import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/global.dart';

import 'modal.dart';


class API {
  API._();
  static final API api = API._();

  Future<News?> fetchCurrency() async {
    String baseUrl = "https://inshorts.deta.dev/news?category=";


    String api = baseUrl + global.endpoint;
    http.Response res = await http.get(Uri.parse(api));

    if (res.statusCode == 200) {
      Map decode = jsonDecode(res.body);

      News news = News.fromjson(json: decode);

      return news;
    }
  }
}