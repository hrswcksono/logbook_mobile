import 'dart:convert';

AktivitasModel aktivitasModelFromJson(String str) =>
    AktivitasModel.fromJson(json.decode(str));

String aktivitasModelToJson(AktivitasModel data) => json.encode(data.toJson());

class AktivitasModel {
  AktivitasModel(
      {required this.id,
      required this.selesai,
      required this.judul,
      required this.realita,
      required this.kategory,
      required this.subAktivitas,
      required this.waktu,
      required this.tanggal});

  String id;
  bool selesai;
  String judul;
  String realita;
  String kategory;
  String subAktivitas;
  String waktu;
  String tanggal;

  factory AktivitasModel.fromJson(Map<String, dynamic> json) => AktivitasModel(
        id: json["id"],
        selesai: json["selesai"],
        judul: json["judul"],
        realita: json["realita"],
        kategory: json["kategory"],
        subAktivitas: json["subAktivitas"],
        waktu: json["waktu"],
        tanggal: json["tanggal"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "selesai": selesai,
        "judul": judul,
        "realita": realita,
        "kategory": kategory,
        "subAktivitas": subAktivitas,
        "waktu": waktu,
        "tanggal": tanggal,
      };
}
