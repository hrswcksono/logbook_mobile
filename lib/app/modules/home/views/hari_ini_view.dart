import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:logbook_mobile/app/modules/home/views/list_aktivitas_view.dart';
import 'package:logbook_mobile/app/modules/home/views/show_calendar.dart';

class HariIniView extends GetView<HomeController> {
  Future<void> _refresh() {
    controller.listAktivitas.clear();
    controller.fetchDataLogbook();
    return Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 248, 248, 1),
      body: RefreshIndicator(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
                child: Column(
              children: [
                ShowCalendarTable(),
                ListAktivitasView(),
              ],
            )),
          ),
          onRefresh: _refresh),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 15.0, left: 15.0, right: 15.0, top: 0),
        child: MaterialButton(
          height: 60,
          onPressed: () {
            Get.toNamed('/detail-aktivitas/detail');
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
