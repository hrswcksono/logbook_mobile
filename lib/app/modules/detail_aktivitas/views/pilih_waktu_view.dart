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
    return Obx((() => AnimatedContainer(
          duration: Duration(milliseconds: 2000),
          curve: Curves.bounceIn,
          child: stateView.value
              ? Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (() {
                          stateView.toggle();
                        }),
                        child: Container(
                          height: 55,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                                color: Color.fromRGBO(201, 223, 251, 1)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.onWaktuSelected.value,
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
                      ),
                    ],
                  ),
                )
              : Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (() {
                          stateView.toggle();
                        }),
                        child: Container(
                          height: 55,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                                color: Color.fromRGBO(201, 223, 251, 1)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.waktuAktivitas[0],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset(
                                  'assets/icons/arrow_up.png',
                                  width: 25,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          width: Get.width,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: (() {
                                  controller.waktuAktivitas[0] =
                                      controller.waktuAktivitas[1];
                                  stateView.toggle();
                                }),
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    color: Colors.white,
                                    height: 55,
                                    width: Get.width,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        controller.waktuAktivitas[1],
                                        style: TextStyle(
                                            fontSize: 14, fontFamily: 'Kanit'),
                                      ),
                                    )),
                              ),
                              InkWell(
                                onTap: (() {
                                  controller.waktuAktivitas[0] =
                                      controller.waktuAktivitas[2];
                                  stateView.toggle();
                                  controller.onWaktuSelected.value =
                                      controller.waktuAktivitas[2];
                                }),
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    color: Colors.white,
                                    height: 55,
                                    width: Get.width,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        controller.waktuAktivitas[2],
                                        style: TextStyle(
                                            fontSize: 14, fontFamily: 'Kanit'),
                                      ),
                                    )),
                              ),
                              InkWell(
                                onTap: (() {
                                  controller.waktuAktivitas[0] =
                                      controller.waktuAktivitas[3];
                                  stateView.toggle();
                                  controller.onWaktuSelected.value =
                                      controller.waktuAktivitas[3];
                                }),
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    color: Colors.white,
                                    height: 55,
                                    width: Get.width,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        controller.waktuAktivitas[3],
                                        style: TextStyle(
                                            fontSize: 14, fontFamily: 'Kanit'),
                                      ),
                                    )),
                              ),
                              InkWell(
                                onTap: (() {
                                  controller.waktuAktivitas[0] =
                                      controller.waktuAktivitas[4];
                                  stateView.toggle();
                                  controller.onWaktuSelected.value =
                                      controller.waktuAktivitas[4];
                                }),
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    color: Colors.white,
                                    height: 55,
                                    width: Get.width,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        controller.waktuAktivitas[4],
                                        style: TextStyle(
                                            fontSize: 14, fontFamily: 'Kanit'),
                                      ),
                                    )),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
        )));
  }
}
