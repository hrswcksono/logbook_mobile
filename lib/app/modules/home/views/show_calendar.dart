// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:table_calendar/table_calendar.dart';

class ShowCalendarTable extends StatefulWidget {
  @override
  _ShowCalendarTableState createState() => _ShowCalendarTableState();
}

class _ShowCalendarTableState extends State<ShowCalendarTable> {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime(2010),
      lastDay: DateTime(2040),
      focusedDay: homeC.focusedDay.value,
      calendarFormat: homeC.calendarFormat.value,
      selectedDayPredicate: (day) {
        return isSameDay(homeC.selectedDay.value, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(homeC.selectedDay.value, selectedDay)) {
          setState(() {
            homeC.selectedDay.value = selectedDay;
            homeC.focusedDay.value = focusedDay;
            homeC.listDataByDate(homeC.getDate(homeC.selectedDay.value));
          });
        }
      },
      onFormatChanged: (format) {
        if (homeC.calendarFormat.value != format) {
          setState(() {
            homeC.calendarFormat.value = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        homeC.focusedDay.value = focusedDay;
      },
    );
  }
}
