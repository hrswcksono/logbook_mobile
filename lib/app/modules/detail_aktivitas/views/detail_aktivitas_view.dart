import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/views/button_kategori.dart';

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
                      fontSize: 28,
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
                          controller.onCheckTitle();
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
              Container(
                width: Get.width,
                height: 100,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                  maxLines: null,
                ),
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
                        text: kategori[index],
                        onPress: () {
                          controller.onBtnOther();
                        },
                        stateValue: controller.btnOther);
                  }),
              // ButtonKategori(
              //     text: kategori[0],
              //     onPress: () {
              //       controller.btnOther.toggle();
              //     },
              //     stateValue: controller.btnOther),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     // Container(
              //     //   height: 40,
              //     //   width: Get.width * 0.27,
              //     //   decoration: BoxDecoration(
              //     //       border: Border.all(color: Colors.blueAccent)),
              //     //   child: Center(child: Text(kategori[0])),
              //     // ),
              //     ButtonKategori(
              //         text: kategori[0],
              //         onPress: () {
              //           controller.onBtnOther();
              //         },
              //         stateValue: controller.btnOther),
              //     Container(
              //       height: 40,
              //       width: Get.width * 0.27,
              //       decoration: BoxDecoration(
              //           border: Border.all(color: Colors.blueAccent)),
              //       child: Center(child: Text(kategori[1])),
              //     ),
              //     Container(
              //       height: 40,
              //       width: Get.width * 0.27,
              //       decoration: BoxDecoration(
              //           border: Border.all(color: Colors.blueAccent)),
              //       child: Center(child: Text(kategori[2])),
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: Get.height * 0.01,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       height: 40,
              //       width: Get.width * 0.27,
              //       decoration: BoxDecoration(
              //           border: Border.all(color: Colors.blueAccent)),
              //       child: Center(child: Text(kategori[3])),
              //     ),
              //     Container(
              //       height: 40,
              //       width: Get.width * 0.27,
              //       decoration: BoxDecoration(
              //           border: Border.all(color: Colors.blueAccent)),
              //       child: Center(child: Text(kategori[4])),
              //     ),
              //     Container(
              //       height: 40,
              //       width: Get.width * 0.27,
              //       decoration: BoxDecoration(
              //           border: Border.all(color: Colors.blueAccent)),
              //       child: Center(child: Text(kategori[5])),
              //     )
              //   ],
              // ),
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
              Container(
                height: 60,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [Text("25 Oktober 2020")],
                  ),
                ),
              ),
              Container(
                height: 60,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [Text("25 Oktober 2020")],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
