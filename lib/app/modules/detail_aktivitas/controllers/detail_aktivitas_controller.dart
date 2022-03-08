import 'package:get/get.dart';

import '../kategori_model.dart';

class DetailAktivitasController extends GetxController with StateMixin {
  var btnCheck = false.obs;
  var listKategori = List<Kategori>.empty().obs;
  var btnKategori = false.obs;
  var btnWaktu = true.obs;

  RxString datePicker = "Pilih Tanggal".obs;

  void onBtnKategori() {
    for (var iter in fillBtnKategory) {
      if (iter.value == true) {
        iter.toggle();
      }
    }
  }

  List<RxBool> fillBtnKategory = [];

  List<RxBool> fillBtnSub = [false.obs, false.obs, false.obs];

  List<String> waktuAktivitas = [
    "Pilih Waktu",
    "Sebelum Dzuhur",
    "Setelah Dzuhur",
    "Setelah Ashar",
    "Overtime"
  ].obs;

  List<String> kategori = [
    "Concept",
    "Design",
    "Discuss",
    "Learn",
    "Report",
    "Other"
  ];

  @override
  void onInit() {
    listKategori.add(Kategori(kategori[0], false));
    listKategori.add(Kategori(kategori[1], false));
    listKategori.add(Kategori(kategori[2], false));
    listKategori.add(Kategori(kategori[3], false));
    listKategori.add(Kategori(kategori[4], false));
    listKategori.add(Kategori(kategori[5], false));

    addIndexButtonKategori(listKategori.length);
    super.onInit();
  }

  void addIndexButtonKategori(int input) {
    for (var x = 0; x < input; x++) {
      fillBtnKategory.insert(x, false.obs);
    }
  }

  var listWaktu = [
    "Sebelum Dzuhur",
    "Setelah Dzuhur",
    "Setelah Ashar",
    "Overtime",
  ];
}
