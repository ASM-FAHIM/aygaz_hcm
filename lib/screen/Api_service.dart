import 'dart:convert';

import 'package:aygazhcm/data_model/user_model.dart';
import 'package:http/http.dart' as http;

class FetchUserList {
  var data = [];
  List<Userlist> results = [];
  String urlList = 'http://a.b.c.d/monyeem/searchuserapi.php';

  Future<List<Userlist>> getuserList({String? query}) async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => Userlist.fromJson(e)).toList();
        if (query != null) {
          results = results
              .where((element) => element.workNote
                  .toLowerCase()
                  .contains((query.toLowerCase())))
              .toList();
        }
      } else {
        print(response.statusCode);
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}
