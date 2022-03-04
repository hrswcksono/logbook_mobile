import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/home/views/bulan_view.dart';
import 'package:logbook_mobile/app/modules/home/views/hari_ini_view.dart';
import 'package:logbook_mobile/app/util/main_drawer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
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
      ),
      drawer: MainNav(),
      body: HariIniView(),
    );
  }
}
