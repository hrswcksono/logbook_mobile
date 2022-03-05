class AktivitasModel {
  bool selesai;
  String judul;
  String realita;
  String kategory;
  List<String> subAktivitas;
  String waktu;
  DateTime tanggal;

  AktivitasModel(this.selesai, this.judul, this.realita, this.kategory,
      this.subAktivitas, this.waktu, this.tanggal);
}
