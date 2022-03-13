import 'dart:convert';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/aktivitas_model.dart';
import 'package:logbook_mobile/app/modules/home/providers/logs_provider.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeController extends GetxController
    with StateMixin<List<AktivitasModel>> {
  //TODO: Implement HomeController

  RxBool btnCheckBox = false.obs;
  var listAktivitas = List<AktivitasModel>.empty().obs;
  DateTime focusedDay = DateTime.now();
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime? selectedDay;
  // var listProduct = List<Log>.empty().obs;

  LogsProvider lgp = Get.put(LogsProvider());
  var loading = true.obs;

  List<RxBool> aktivitasState = [];

  List<CalendarFormat> formatCalendar = [
    CalendarFormat.month,
    CalendarFormat.twoWeeks,
    CalendarFormat.week
  ];

  @override
  void onInit() {
    fetchDataLogbook();
    super.onInit();
  }

  void removeList(int index, String str) {
    listAktivitas.value.removeAt(index);
    lgp.deleteLogs(str);
    change(listAktivitas, status: RxStatus.success());
  }

  void fetchDataLogbook() async {
    try {
      var logbook = await LogsProvider().getListLogs().then((value) {
        if (value.isNotEmpty) {
          print("masuk");
          for (var e in value.entries) {
            // print(e.key);
            for (var data in e.value.logs) {
              listAktivitas.add(AktivitasModel(
                  e.key,
                  data.isDone,
                  data.target,
                  data.reality,
                  data.category,
                  ["fdsfds", "dsdsds"],
                  data.time,
                  e.value.timestamp));
            }
          }
        }
        change(listAktivitas, status: RxStatus.success());
      }, onError: (_) {
        change(null, status: RxStatus.error('tidak ada data'));
        print("error");
      });
    } catch (e) {
      change(null, status: RxStatus.error('tidak ada data'));
      e.printError();
      print("catch");
    }
  }
}
