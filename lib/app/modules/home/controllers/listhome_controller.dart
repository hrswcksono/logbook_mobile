import 'package:get/get.dart';

import '../log_list_model.dart';
import '../providers/logs_provider.dart';

class ListhomeController extends GetxController
    with StateMixin<Map<String, ListLogModel>> {
  //TODO: Implement ListhomecontrollerController

  @override
  void onInit() {
    super.onInit();
  }

  LogsProvider lgp = Get.put(LogsProvider());

  void getLogList() {
    try {
      lgp.getListLogs().then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        print(err.toString());
        print("object");
      });
    } catch (err) {
      print("err");
    } finally {}
  }
}
