import 'dart:convert';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/log_book_model.dart';

import '../log_model.dart';

class DetailLogProvider extends GetConnect {
  final url = "https://logbook-aa225-default-rtdb.firebaseio.com";

  Future<LogBookModel> showLogBook(String id) async {
    final response = await get(url + "/logs/" + id + ".json");

    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      return logBookModelFromJson(response.bodyString.toString());
    }
  }

  Future<LogModel> addLogBook(String target, String category, String reality,
      String time, String note, String timestamp) async {
    final body = json.encode({
      "timestamp": timestamp,
      "logs": [
        {
          "target": target,
          "category": category,
          "reality": reality,
          "time": time,
          "note": note,
          "is_done": false
        }
      ]
    });
    print(body.toString());
    final response = await post(url + '/logs.json', body);
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      print(response);
      return logModelFromJson(response.bodyString.toString());
    }
  }
}
