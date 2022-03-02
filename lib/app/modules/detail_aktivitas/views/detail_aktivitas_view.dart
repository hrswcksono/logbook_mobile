import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/views/button_kategori.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/views/list_sub_aktivitas_view.dart';

import '../controllers/detail_aktivitas_controller.dart';

// ignore: must_be_immutable
class DetailAktivitasView extends GetView<DetailAktivitasController> {
  List<String> kategori = [
    "Concept",
    "Design",
    "Discuss",
    "Learn",
    "Report",
    "Other"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: (() {
                        Get.back();
                      }),
                      icon: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Detail Aktivitas",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Kanit',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Target/Ekspektasi",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Kanit',
                      color: Color.fromRGBO(174, 174, 174, 1)),
                ),
              ),
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                        value: controller.btnCheck.value,
                        onChanged: (_) {
                          controller.btnCheck.toggle();
                        }),
                  ),
                  Text("Judul")
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Realita",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Kanit',
                      color: Color.fromRGBO(174, 174, 174, 1)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width,
                height: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                    maxLines: null,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Kategori",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Kanit',
                      color: Color.fromRGBO(174, 174, 174, 1)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return ButtonKategori(
                      text: controller.listKategori[index].text,
                      onPress: () {
                        // controller.listKategori[index].statusButton =
                        //     !controller.listKategori[index].statusButton;
                        controller.fillBtnKategory[index].toggle();
                      },
                      stateValue: controller.fillBtnKategory[index],
                    );
                  }),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sub-Aktivitas",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Kanit',
                      color: Color.fromRGBO(174, 174, 174, 1)),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "+ Tambah Sub-Aktivitas",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Kanit',
                      color: Color.fromRGBO(174, 174, 174, 1)),
                ),
              ),
              ListSubAktivitasView(
                  title: "dsdsdsdfsd",
                  onChange: controller.btnCheck.toggle(),
                  stateValue: controller.btnCheck),
              // Container(
              //   // color: Colors.blueAccent,
              //   height: 70,
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 5),
              //     child: Column(
              //       children: [
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Column(
              //               crossAxisAlignment: CrossAxisAlignment.center,
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(50),
              //                     color: Color.fromRGBO(229, 229, 229, 1),
              //                   ),
              //                   height: 3,
              //                   width: Get.width * 0.06,
              //                 ),
              //                 SizedBox(
              //                   height: 5,
              //                 ),
              //                 Container(
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(50),
              //                     color: Color.fromRGBO(229, 229, 229, 1),
              //                   ),
              //                   height: 3,
              //                   width: Get.width * 0.06,
              //                 )
              //               ],
              //             ),
              //             Obx(
              //               () => Checkbox(
              //                   value: controller.btnCheck.value,
              //                   onChanged: (_) {
              //                     controller.btnCheck.toggle();
              //                   }),
              //             ),
              //             Text(
              //               "Analisis",
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 fontFamily: 'Kanit',
              //               ),
              //             ),
              //           ],
              //         ),
              //         Divider(color: Color.fromRGBO(167, 205, 251, 1)),
              //       ],
              //     ),
              //   ),
              // ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Waktu & Tanggal",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Kanit',
                      color: Color.fromRGBO(174, 174, 174, 1)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
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
              SizedBox(
                height: 15,
              ),
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
                        "Pilih Tanggal",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/icons/calender.png',
                        width: 25,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
