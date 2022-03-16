import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Helper {
  static Future<bool> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  static final appbar = AppBar(
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
  );

  static get context => null;
}
