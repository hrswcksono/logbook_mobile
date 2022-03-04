import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/kategori_model.dart';
import 'package:logbook_mobile/app/modules/home/controllers/home_controller.dart';

class ListAktivitasView extends GetView<HomeController> {
  ListAktivitasView({this.item, Key? key}) : super(key: key);

  final List<Kategori>? item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListAktivitasView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ListAktivitasView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
