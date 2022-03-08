import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 90,
            child: DrawerHeader(
              child: Row(
                children: [
                  Image.asset('assets/icons/logo_logbook.png'),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Text(
                    'Logbook App',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 1.0, color: Colors.blue),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.back();
            },
            leading: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset("assets/icons/laporan_aktivitas.png")),
            title: Text(
              "Laporan Aktivitas",
              style: TextStyle(fontFamily: "Kanit"),
            ),
          ),
          ListTile(
            onTap: () {
              Get.back();
            },
            leading: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset("assets/icons/logo_kategori.png")),
            title: Text(
              "Kategori",
              style: TextStyle(fontFamily: "Kanit"),
            ),
          ),
          Spacer(),
          ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset("assets/icons/log-out.png")),
            title: Text(
              "Keluar",
              style: TextStyle(fontFamily: "Kanit"),
            ),
          )
        ],
      ),
    );
  }
}
