class AktivitasModel {
  String id;
  bool selesai;
  String judul;
  String realita;
  String kategory;
  List<String> subAktivitas;
  String waktu;
  String tanggal;

  AktivitasModel(this.id, this.selesai, this.judul, this.realita, this.kategory,
      this.subAktivitas, this.waktu, this.tanggal);
}
