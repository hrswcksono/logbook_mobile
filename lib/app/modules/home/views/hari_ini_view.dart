import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HariIniView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HariIniView'),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
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
          ],
        )),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: MaterialButton(
          height: 60,
          onPressed: () {},
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
