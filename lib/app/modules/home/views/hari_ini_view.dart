import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:logbook_mobile/app/modules/home/views/item_list_view.dart';
import 'package:table_calendar/table_calendar.dart';

class HariIniView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 248, 248, 1),
      // appBar: AppBar(
      //   title: Text('HariIniView'),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime(2018, 1, 13),
              lastDay: DateTime(2050, 1, 13),
              focusedDay: DateTime.now(),
              calendarFormat: CalendarFormat.week,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Senin, 4 Februari 2022",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(161, 161, 161, 1),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Text(
                      "Aktivitas",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      "0",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(255, 189, 20, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Container(
                // color: Colors.yellow,
                height: Get.height * 0.38,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/no_activity.png',
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Tidak ada aktivitas hari ini",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          color: Color.fromRGBO(161, 161, 161, 1)),
                    )
                  ],
                )),
            ItemListView(
              title: "Zoom",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              waktu: "Sebelum Tidur",
              tipe: "Discuss",
              // onTap: () {
              //   controller.btnCheckBox.toggle();
              // },
              stateValue: controller.btnCheckBox,
            )
          ],
        )),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 15.0, left: 15.0, right: 15.0, top: 0),
        child: MaterialButton(
          height: 60,
          onPressed: () {
            Get.toNamed('/detail-aktivitas');
          },
          color: Colors.blue,
          child: Text(
            "+ Tambah Aktivitas",
            style: TextStyle(
                color: Colors.white, fontFamily: 'Kanit', fontSize: 18),
          ),
        ),
      ),
    );
  }
}
