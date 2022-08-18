import 'package:comments_api/model.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Comments>?> getComments() async {
    var client = http.Client();
    var url = Uri.parse("https://jsonplaceholder.typicode.com/comments");

    var response = await client.get(url);

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return commentsFromJson(jsonData);
    }
  }
}
