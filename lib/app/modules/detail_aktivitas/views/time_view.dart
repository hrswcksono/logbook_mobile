import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/controllers/detail_aktivitas_controller.dart';

class TimeView extends GetView<DetailAktivitasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TimeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TimeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
