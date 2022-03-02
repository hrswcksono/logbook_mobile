import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxBool btnCheckBox = false.obs;

  DateTime focusedDay = DateTime.now();
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime? selectedDay;
}
