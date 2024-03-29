import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:logbook_mobile/app/modules/home/views/bulan_view.dart';
import 'package:logbook_mobile/app/modules/home/views/hari_ini_view.dart';
import 'package:logbook_mobile/app/util/main_drawer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aktivitasku',
          style: TextStyle(fontFamily: "Kanit", fontSize: 16),
        ),
        centerTitle: true,
        leading: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              child: Icon(
                Icons.menu,
                size: 30.0,
              ),
              padding: EdgeInsets.all(7.0),
            ),
          );
        }),
        actions: [
          SizedBox(
              height: 100.0,
              width: 60.0,
              child: InkWell(
                onTap: (() async {
                  await showMenu(
                      useRootNavigator: true,
                      context: context,
                      position: RelativeRect.fromLTRB(
                          Get.width, (Get.height - (Get.height - 70)), 20, 0),
                      items: [
                        PopupMenuItem(
                          onTap: () {
                            controller.categoryCounter.value = false;
                            controller.filterList(
                                controller.categoryCounter.value,
                                controller
                                    .getDate(controller.selectedDay.value));
                          },
                          value: 1,
                          child: Text(
                            "Aktivitas Tertunda",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Kanit',
                                color: Colors.black),
                          ),
                        ),
                        PopupMenuItem(
                          onTap: (() {
                            controller.categoryCounter.value = true;
                            controller.filterList(
                                controller.categoryCounter.value,
                                controller
                                    .getDate(controller.selectedDay.value));
                          }),
                          value: 1,
                          child: Text(
                            "Aktivitas Selesai",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Kanit',
                                color: Colors.black),
                          ),
                        ),
                        PopupMenuItem(
                          onTap: (() {}),
                          value: 1,
                          child: Text(
                            "Aktivitas Semua",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Kanit',
                                color: Colors.black),
                          ),
                        ),
                      ]);
                }),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset('assets/icons/mi_filter.png'),
                ),
              ))
        ],
      ),
      drawer: MainNav(),
      body: HariIniView(),
    );
  }
}
