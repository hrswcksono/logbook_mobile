import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CalendarView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CalendarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CalendarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
