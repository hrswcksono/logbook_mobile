import 'dart:convert';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/aktivitas_model.dart';
import 'package:logbook_mobile/app/modules/home/providers/logs_provider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../log_list_model.dart';

class HomeController extends GetxController
    with StateMixin<Map<String, ListLogModel>> {
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
    // listAktivitas.add(AktivitasModel(
    //     true,
    //     "Redesign",
    //     "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
    //     "Discuss",
    //     ["fdsfds", "dsdsds"],
    //     "Sebelum ashar",
    //     DateTime.now()));

    // listAktivitas.add(AktivitasModel(false, "Redesign 2", "Design", "Discuss",
    //     ["fdsfds", "dsdsds"], "Sebelum ashar", DateTime.now()));

    fetchDataLogbook();
    super.onInit();
  }

  void removeList(index) {
    listAktivitas.value.removeAt(index);
  }

  void fetchDataLogbook() async {
    try {
      var logbook = await LogsProvider().getListLogs().then((value) {
        if (value.isNotEmpty) {
          change(value, status: RxStatus.success());
          print("masuk");
          for (var e in value.entries) {
            for (var data in e.value.logs) {
              listAktivitas.add(AktivitasModel(
                  data.isDone,
                  data.target,
                  data.reality,
                  data.category,
                  ["fdsfds", "dsdsds"],
                  data.time,
                  DateTime.now()));
            }
          }
        }
        // print(value);
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
