import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/aktivitas_model.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeController extends GetxController {
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
    listAktivitas.add(AktivitasModel(
        true,
        "Redesign",
        "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
        "Discuss",
        ["fdsfds", "dsdsds"],
        "Sebelum ashar",
        DateTime.now()));

    listAktivitas.add(AktivitasModel(false, "Redesign 2", "Design", "Discuss",
        ["fdsfds", "dsdsds"], "Sebelum ashar", DateTime.now()));
    super.onInit();
  }

  void removeList(index) {
    listAktivitas.value.removeAt(index);
  }
}
