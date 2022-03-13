import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logbook_mobile/app/data/aktivitas_model.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/providers/detail_log_provider.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/sub_aktivitas_model.dart';

import '../kategori_model.dart';

class DetailAktivitasController extends GetxController with StateMixin {
  var btnCheck = false.obs;
  var listKategori = List<Kategori>.empty().obs;
  var listSubAktivitas = List<SubAktivitas>.empty().obs;
  var btnKategori = false.obs;
  var btnWaktu = true.obs;
  List<RxBool> fillBtnKategory = [];
  List<RxBool> fillBtnSubAktivitas = [];
  List<RxBool> fillBtnSub = [false.obs, false.obs, false.obs];
  var aktivitasModel = AktivitasModel;

  var handlePageDetail = "".obs;

  var kategoryFill = "".obs;

  DetailLogProvider lgp = Get.put(DetailLogProvider());

  late TextEditingController targetController;
  late TextEditingController realitaController;
  RxString onWaktuSelected = "".obs;
  RxString onKategoriSelected = "".obs;
  RxString onSubAktivitasSelected = "".obs;
  RxString datePicker = "".obs;
  RxString targetS = "".obs;
  RxString realityS = "".obs;

  var handlingView = false.obs;

  List<RxString> fillDetail = [];

  void onBtnState(int temp) {
    if (temp == 1) {
      for (var iter in fillBtnKategory) {
        if (iter.value == true) {
          iter.toggle();
        }
      }
    } else if (temp == 2) {
      for (var iter in fillBtnSubAktivitas) {
        if (iter.value == true) {
          iter.toggle();
        }
      }
    }
  }

  List<String> waktuAktivitas = [
    "Pilih Waktu",
    "Sebelum Dzuhur",
    "Setelah Dzuhur",
    "Setelah Ashar",
    "Overtime"
  ].obs;

  List<String> kategori =
      ["Concept", "Design", "Discuss", "Learn", "Report", "Other"].obs;

  void refreshButton() {
    onWaktuSelected.value = waktuAktivitas[0];
    datePicker.value = "Pilih Tanggal";
  }

  @override
  void onInit() {
    if (Get.parameters['id'] != "detail") {
      show(Get.parameters['id'].toString());
      handlingView = true.obs;
      print(Get.parameters['id'].toString());
    } else {
      handlingView = false.obs;
      refreshButton();
    }
    targetController = TextEditingController(text: targetS.value);
    realitaController = TextEditingController(text: realityS.value);
    onWaktuSelected.value = waktuAktivitas[0];
    datePicker.value = "Pilih Tanggal";
    listKategori.add(Kategori(kategori[0], false));
    listKategori.add(Kategori(kategori[1], false));
    listKategori.add(Kategori(kategori[2], false));
    listKategori.add(Kategori(kategori[3], false));
    listKategori.add(Kategori(kategori[4], false));
    listKategori.add(Kategori(kategori[5], false));
    addBtnState(1);
    super.onInit();
  }

  void addBtnState(int temp) {
    if (temp == 1) {
      for (var x = 0; x < listKategori.length; x++) {
        fillBtnKategory.insert(x, false.obs);
      }
    } else if (temp == 2) {
      for (var x = 0; x < listSubAktivitas.length; x++) {
        fillBtnSubAktivitas.insert(x, false.obs);
      }
    }
  }

  var listWaktu = [
    "Sebelum Dzuhur",
    "Setelah Dzuhur",
    "Setelah Ashar",
    "Overtime",
  ];

  void updateLogBook(String id) {
    try {
      lgp
          .editLogBook(
              id,
              targetController.text,
              onKategoriSelected.toString(),
              realitaController.text,
              onWaktuSelected.toString(),
              "note",
              datePicker.value)
          .then((value) {});
    } catch (e) {
      print(e);
    }
  }

  void show(String id) {
    try {
      lgp.showLogBook(id).then((value) {
        for (var data in value.logs) {
          // change(
          //     AktivitasModel(id, data.isDone, data.target, data.reality,
          //         data.category, ["subAktivitas"], data.time, value.timestamp),
          //     status: RxStatus.success());
          targetController.text = data.target;
          realitaController.text = data.reality;
          onWaktuSelected.value = data.time;
          onKategoriSelected.value = data.category;
          onSubAktivitasSelected.value = "";
          datePicker.value = value.timestamp;
          fillBtnKategory[0] = false.obs;
          change(null, status: RxStatus.success());
        }
        // print(value.logs);
      });
    } catch (e) {
      print(e.toString());
    }
  }

  void addLogBook() {
    try {
      lgp
          .addLogBook(
              targetController.text,
              onKategoriSelected.toString(),
              realitaController.text,
              onWaktuSelected.toString(),
              "note",
              datePicker.toString())
          .then((value) {
        print(value.name);
      }, onError: (err) {
        print(err.toString());
        print("object");
      });
    } catch (err) {
      print("err");
    } finally {}
  }

  @override
  void onClose() {
    Get.offNamed('home');
  }
}
