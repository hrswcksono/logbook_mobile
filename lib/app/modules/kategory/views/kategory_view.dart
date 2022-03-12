import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/values/strings.dart';

import '../controllers/kategory_controller.dart';

class KategoryView extends GetView<KategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KategoryView'),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                // padding: EdgeInsets.only(left: ),
                child: Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Padding(
                padding: EdgeInsets.all(Get.width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: Get.width * 0.15,
                        height: Get.width * 0.15,
                        child: Image.asset(Strings.iconKategori[index])),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Title",
                      style: TextStyle(
                          fontFamily: "Kanit",
                          // fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Aktivitas 0",
                      style: TextStyle(
                          fontFamily: "Kanit",
                          color: Color.fromRGBO(179, 179, 179, 1),
                          // fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ));
          }),
    );
  }
}
