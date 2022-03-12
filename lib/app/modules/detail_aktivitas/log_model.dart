import 'dart:convert';

LogModel logModelFromJson(String str) => LogModel.fromJson(json.decode(str));

String logModelToJson(LogModel data) => json.encode(data.toJson());

class LogModel {
  LogModel({
    required this.name,
  });

  String name;

  factory LogModel.fromJson(Map<String, dynamic> json) => LogModel(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
