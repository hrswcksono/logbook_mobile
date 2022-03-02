import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  DateTime focusedDay = DateTime.now();
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime? selectedDay;
}
