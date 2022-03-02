import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/controllers/detail_aktivitas_controller.dart';

class ButtonKategori extends GetView<DetailAktivitasController> {
  ButtonKategori({
    this.text,
    Key? key,
    required this.onPress,
    required this.stateValue,
  }) : super(key: key);

  final String? text;
  final void Function() onPress;
  final RxBool stateValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: Get.width * 0.27,
        child: Obx((() => AnimatedContainer(
            duration: Duration(milliseconds: 2000),
            curve: Curves.bounceIn,
            child: stateValue.value
                ? InkWell(
                    onTap: onPress,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(80, 155, 248, 1),
                          border: Border.all(
                              color: Color.fromRGBO(80, 155, 248, 1))),
                      child: Center(
                          child: Text(
                        text!,
                        style: TextStyle(
                          fontFamily: 'Kanit',
                        ),
                      )),
                    ),
                  )
                : InkWell(
                    onTap: onPress,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromRGBO(203, 225, 253, 1))),
                      child: Center(
                          child: Text(
                        text!,
                        style: TextStyle(
                          fontFamily: 'Kanit',
                        ),
                      )),
                    ),
                  )))));
  }
}
