import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ListSubAktivitasView extends GetView {
  ListSubAktivitasView({
    this.title,
    Key? key,
    // required this.onChange,
    required this.stateValue,
  }) : super(key: key);

  final String? title;
  // final void Function() onChange;
  final RxBool stateValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blueAccent,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(229, 229, 229, 1),
                      ),
                      height: 3,
                      width: Get.width * 0.06,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(229, 229, 229, 1),
                      ),
                      height: 3,
                      width: Get.width * 0.06,
                    )
                  ],
                ),
                Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.bounceInOut,
                      child: stateValue.value
                          ? InkWell(
                              onTap: (() {
                                stateValue.toggle();
                              }),
                              child: Row(
                                children: [
                                  Checkbox(
                                      value: stateValue.value,
                                      onChanged: (_) {
                                        stateValue.toggle();
                                      }),
                                  Text(
                                    title!,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Kanit',
                                        color: Color.fromRGBO(161, 161, 161, 1),
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                            )
                          : InkWell(
                              onTap: (() {
                                stateValue.toggle();
                              }),
                              child: Row(
                                children: [
                                  Checkbox(
                                      value: stateValue.value,
                                      onChanged: (_) {
                                        stateValue.toggle();
                                      }),
                                  Text(
                                    title!,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Kanit',
                                    ),
                                  ),
                                ],
                              )),
                    )),
              ],
            ),
            Divider(color: Color.fromRGBO(167, 205, 251, 1)),
          ],
        ),
      ),
    );
  }
}
