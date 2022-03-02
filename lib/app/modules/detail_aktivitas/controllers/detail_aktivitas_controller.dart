import 'package:get/get.dart';

class DetailAktivitasController extends GetxController {
  //TODO: Implement DetailAktivitasController

  var btnCheck = false.obs;

  var btnConcept = false.obs;
  var btnDesign = false.obs;
  var btnDiscuss = false.obs;
  var btnLearn = false.obs;
  var btnReport = false.obs;
  var btnOther = true.obs;

  void onBtnOther() {
    btnOther.toggle();
  }

  var listWaktu = [
    "Sebelum Dzuhur",
    "Setelah Dzuhur",
    "Setelah Ashar",
    "Overtime",
  ];

  void onCheckTitle() {
    btnCheck.toggle();
  }

  void onBtnConcept() {
    btnConcept.toggle();
    if (btnConcept.value == true) {
      btnDesign.value = false;
      btnDiscuss.value = false;
      btnLearn.value = false;
      btnReport.value = false;
      btnOther.value = false;
    }
  }

  void onBtnDesign() {
    btnConcept.toggle();
    if (btnDesign.value == true) {
      btnConcept.value = false;
      btnDiscuss.value = false;
      btnLearn.value = false;
      btnReport.value = false;
      btnOther.value = false;
    }
  }
}
