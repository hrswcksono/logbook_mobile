import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:table_calendar/table_calendar.dart';

class BulanView extends GetView {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime(2018, 1, 13),
              lastDay: DateTime(2050, 1, 13),
              focusedDay: DateTime.now(),
              calendarFormat: CalendarFormat.month,
            )
          ],
        ),
      ),
    );
  }
}
