import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/home/views/bulan_view.dart';
import 'package:logbook_mobile/app/modules/home/views/hari_ini_view.dart';
import 'package:logbook_mobile/app/util/main_drawer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    List<Tab> myTab = [
      Tab(
        child: Text(
          "Hari Ini",
          style: TextStyle(fontFamily: "Kanit", fontSize: 16),
        ),
      ),
      Tab(
        child: Text(
          "Bulan",
          style: TextStyle(fontFamily: "Kanit", fontSize: 16),
        ),
      )
    ];
    return MaterialApp(
      home: DefaultTabController(
          length: myTab.length,
          child: Scaffold(
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(100.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: AppBar(
                      title: Text(
                        'Aktivitasku',
                        style: TextStyle(fontFamily: "Kanit", fontSize: 16),
                      ),
                      centerTitle: true,
                      leading: IconButton(
                          onPressed: () {
                            MainNav();
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 30.0,
                          )),
                      actions: [
                        SizedBox(
                            height: 100.0,
                            width: 60.0,
                            child: Icon(
                              Icons.filter_list,
                              size: 30.0,
                            ))
                      ],
                      // bottom: TabBar(
                      //     indicatorColor: Colors.white,
                      //     indicatorPadding:
                      //         EdgeInsets.only(right: 50, left: 50),
                      //     tabs: myTab),
                    ),
                  )),
              drawer: MainNav(),
              body: TabBarView(children: [HariIniView(), BulanView()]))),
    );
  }
}
