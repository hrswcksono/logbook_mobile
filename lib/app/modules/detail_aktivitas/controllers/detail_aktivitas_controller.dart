import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/aktivitas_model.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/providers/detail_log_provider.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/sub_aktivitas_model.dart';

import '../kategori_model.dart';

class DetailAktivitasController extends GetxController
    with StateMixin<AktivitasModel> {
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
  late String onWaktuSelected;
  late String onKategoriSelected;
  late String onSubAktivitasSelected;

  List<RxString> fillDetail = [];

  RxString datePicker = "Pilih Tanggal".obs;

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

  @override
  void onInit() {
    targetController = TextEditingController();
    realitaController = TextEditingController();
    onWaktuSelected = "Pilih Waktu";
    onKategoriSelected = "";
    onSubAktivitasSelected = "";

    listKategori.add(Kategori(kategori[0], false));
    listKategori.add(Kategori(kategori[1], false));
    listKategori.add(Kategori(kategori[2], false));
    listKategori.add(Kategori(kategori[3], false));
    listKategori.add(Kategori(kategori[4], false));
    listKategori.add(Kategori(kategori[5], false));

    // show("-Mxwx6vmUwgdhMXDzEv1");

    if (Get.parameters['id'] != "detail") {
      show(Get.parameters['id'].toString());
    }

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

  void show(String id) {
    try {
      lgp.showLogBook(id).then((value) {
        for (var data in value.logs) {
          change(
              AktivitasModel(id, data.isDone, data.target, data.reality,
                  data.category, ["subAktivitas"], data.time, value.timestamp),
              status: RxStatus.success());
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
              onKategoriSelected,
              realitaController.text,
              onWaktuSelected,
              "note",
              datePicker.toString())
          .then((value) {
        print(value.name);
        Get.toNamed('/home');
      }, onError: (err) {
        print(err.toString());
        print("object");
      });
    } catch (err) {
      print("err");
    } finally {}
  }
}
