import 'package:http/http.dart' as http;

import 'api_constants.dart';
class ApiManger {
// https://newsapi.org/v2/top-headlines/sources?apiKey=766d06a223d24570be90b8045f095011
static void getSources(){
  var url=Uri.https(ApiConstants.baseUrl);

  http.get(url);

}
}