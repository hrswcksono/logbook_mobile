import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/home/controllers/home_controller.dart';

class ItemListView extends GetView<HomeController> {
  ItemListView({
    this.title,
    this.description,
    this.waktu,
    this.tipe,
    Key? key,
    // required this.onTap,
    required this.stateValue,
  }) : super(key: key);

  final String? title;
  final String? description;
  final String? waktu;
  final String? tipe;
  // final void Function() onTap;
  final RxBool stateValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.white,
        child: Card(
      child: Column(
        children: [
          Obx(() => AnimatedContainer(
                duration: Duration(milliseconds: 2000),
                curve: Curves.bounceInOut,
                child: stateValue.value
                    ? Row(
                        children: [
                          Checkbox(
                              value: stateValue.value,
                              onChanged: (_) {
                                stateValue.toggle();
                              }),
                          Text(
                            title!,
                            style: TextStyle(
                                fontFamily: 'Kanit',
                                fontSize: 20,
                                color: Color.fromRGBO(161, 161, 161, 1),
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Checkbox(
                              value: stateValue.value,
                              onChanged: (_) {
                                stateValue.toggle();
                              }),
                          Text(
                            title!,
                            style: TextStyle(
                                fontFamily: 'Kanit',
                                color: Color.fromRGBO(67, 67, 67, 1),
                                fontSize: 20),
                          ),
                        ],
                      ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 15, right: 10),
            child: Column(
              children: [
                Text(
                  description!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: false,
                  style: TextStyle(
                      fontFamily: 'Kanit',
                      color: Color.fromRGBO(166, 166, 166, 1)),
                ),
                Divider(color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(waktu!,
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(161, 161, 161, 1))),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Color.fromRGBO(255, 244, 150, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          tipe!,
                          style: TextStyle(fontFamily: 'Kanit'),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
