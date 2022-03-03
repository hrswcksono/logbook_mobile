import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/controllers/detail_aktivitas_controller.dart';

class PilihWaktuView extends GetView<DetailAktivitasController> {
  PilihWaktuView({
    Key? key,
    required this.stateView,
  }) : super(key: key);

  final RxBool stateView;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: Color.fromRGBO(201, 223, 251, 1)),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pilih Waktu",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  'assets/icons/arrow_down.png',
                  width: 25,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
        Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.05,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            width: Get.width,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.white,
                    height: 55,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Sebelum dhuhur",
                        style: TextStyle(fontSize: 14, fontFamily: 'Kanit'),
                      ),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.white,
                    height: 55,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Sebelum dhuhur",
                        style: TextStyle(fontSize: 14, fontFamily: 'Kanit'),
                      ),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.white,
                    height: 55,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Sebelum dhuhur",
                        style: TextStyle(fontSize: 14, fontFamily: 'Kanit'),
                      ),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.white,
                    height: 55,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Sebelum dhuhur",
                        style: TextStyle(fontSize: 14, fontFamily: 'Kanit'),
                      ),
                    ))
              ],
            ))
      ],
    );
  }
}
