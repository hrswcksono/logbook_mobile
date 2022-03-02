import 'package:get/get.dart';

import '../kategori_model.dart';

class DetailAktivitasController extends GetxController with StateMixin {
  //TODO: Implement DetailAktivitasController

  var btnCheck = false.obs;
  var listKategori = List<Kategori>.empty().obs;

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

    super.onInit();
  }

  var listWaktu = [
    "Sebelum Dzuhur",
    "Setelah Dzuhur",
    "Setelah Ashar",
    "Overtime",
  ];
}
