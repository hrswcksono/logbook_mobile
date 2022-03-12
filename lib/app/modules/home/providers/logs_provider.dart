import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/home/log_list_model.dart';

class LogsProvider extends GetConnect {
  final url = "https://logbook-aa225-default-rtdb.firebaseio.com";

  Future<Map<String, ListLogModel>> getListLogs() async {
    final response = await get(url + '/logs.json');

    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      return listLogModelFromJson(response.bodyString.toString());
    }
  }

  Future<String> deleteLogs(String id) async {
    final response = await delete(url + "/logs/" + id + ".json");

    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      return response.toString();
    }
  }
}
