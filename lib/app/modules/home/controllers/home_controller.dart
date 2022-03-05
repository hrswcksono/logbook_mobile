import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/aktivitas_model.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeController extends GetxController with StateMixin {
  //TODO: Implement HomeController

  RxBool btnCheckBox = false.obs;
  var listAktivitas = List<AktivitasModel>.empty().obs;
  DateTime focusedDay = DateTime.now();
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime? selectedDay;

  List<RxBool> aktivitasState = [];

  List<CalendarFormat> formatCalendar = [
    CalendarFormat.month,
    CalendarFormat.twoWeeks,
    CalendarFormat.week
  ];

  @override
  void onInit() {
    // listAktivitas.add(AktivitasModel(true, "Redesign", "Design", "Discuss",
    //     ["fdsfds", "dsdsds"], "Sebelum ashar", DateTime.now()));
    // // toState(listAktivitas[0].selesai);

    // listAktivitas.add(AktivitasModel(true, "Redesign 2", "Design", "Discuss",
    //     ["fdsfds", "dsdsds"], "Sebelum ashar", DateTime.now()));

    super.onInit();
  }
}
