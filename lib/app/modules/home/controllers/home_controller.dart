import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:logbook_mobile/app/data/aktivitas_model.dart';
import 'package:logbook_mobile/app/modules/home/providers/logs_provider.dart';
import 'package:logbook_mobile/app/util/helper.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeController extends GetxController
    with StateMixin<List<AktivitasModel>> {
  //TODO: Implement HomeController

  RxBool btnCheckBox = false.obs;
  var listAktivitas = List<AktivitasModel>.empty().obs;
  var focusedDay = DateTime.now().obs;
  var calendarFormat = CalendarFormat.month.obs;
  // var listProduct = List<Log>.empty().obs;
  var selectedDay = DateTime.now().obs;
  var categoryCounter = false.obs;
  final box = GetStorage();

  var fetchList = List<String>;

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

  List<AktivitasModel> filterByDate(String date) {
    return listAktivitas.where((element) => element.tanggal == date).toList();
  }

  void removeList(int index, String str) {
    listAktivitas.value.removeAt(index);
    lgp.deleteLogs(str);
    change(listAktivitas, status: RxStatus.success());
  }

  void fetchDataLogbook() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      try {
        var logbook = await LogsProvider().getListLogs().then((value) {
          if (value.isNotEmpty) {
            print("masuk");
            for (var e in value.entries) {
              for (var data in e.value.logs) {
                listAktivitas.add(AktivitasModel(
                    id: e.key,
                    selesai: data.isDone,
                    judul: data.target,
                    realita: data.reality,
                    kategory: data.category,
                    subAktivitas: "subaktivitas",
                    waktu: data.time,
                    tanggal: e.value.timestamp));
              }
            }
            // box.erase();
            print(listAktivitas);
            box.write('list', listAktivitas);
          }

          change(listAktivitas, status: RxStatus.success());
          filterList(false, getDate(DateTime.now()));
        }, onError: (_) {
          change(null, status: RxStatus.error('tidak ada data'));
          print("error");
        });
      } catch (e) {
        change(null, status: RxStatus.error('tidak ada data'));
        e.printError();
        print("catch");
      }
    } else {
      // box.write('', value);
      var readData = box.read('list');
      for (var temp in readData) {
        listAktivitas.add(AktivitasModel(
            id: temp['id'],
            selesai: temp['selesai'],
            judul: temp['judul'],
            realita: temp['realita'],
            kategory: temp['kategory'],
            subAktivitas: temp['subAktivitas'],
            waktu: temp['waktu'],
            tanggal: temp['tanggal']));
      }
      change(listAktivitas, status: RxStatus.success());
    }
  }

  void filterList(bool category, String date) {
    change(
        listAktivitas.value
            .where((element) =>
                element.selesai == category && element.tanggal == date)
            .toList(),
        status: RxStatus.success());
  }

  String getDate(DateTime input) {
    return DateFormat.EEEE().format(input).toString() +
        ", " +
        DateFormat("dd MMMM yyyy").format(input).toString();
  }
}
