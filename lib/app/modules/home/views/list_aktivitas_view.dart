import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:logbook_mobile/app/modules/home/views/item_list_view.dart';

class ListAktivitasView extends GetView<HomeController> {
  // ListAktivitasView({this.selesai, this.filterDate, Key? key})
  //     : super(key: key);

  // final String? selesai;
  // final DateTime? filterDate;

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => Column(
          children: [
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
                      state!.length.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(255, 189, 20, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            controller.listAktivitas.isEmpty
                ? Container(
                    // color: Colors.yellow,
                    height: Get.height * 0.38,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                    ))
                : ListView.builder(
                    padding: const EdgeInsets.all(8),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: state.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Slidable(
                          endActionPane:
                              ActionPane(motion: ScrollMotion(), children: [
                            SlidableAction(
                              onPressed: (context) {
                                Get.toNamed(
                                    '/detail-aktivitas/' + state[index].id);
                              },
                              icon: Icons.edit,
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.white,
                              label: "Edit",
                            ),
                            SlidableAction(
                              onPressed: (context) {
                                controller.removeList(index, state[index].id);
                              },
                              icon: Icons.delete,
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              label: "Delete",
                            ),
                          ]),
                          child: ItemListView(
                            title: state[index].judul,
                            description: state[index].realita,
                            waktu: state[index].waktu,
                            tipe: state[index].kategory,
                            // onTap: () {
                            //   controller.btnCheckBox.toggle();
                            // },
                            stateValue: controller.btnCheckBox,
                          ));
                    }),
          ],
        ));
  }
}
