import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/show_and_edit_controller.dart';

class ShowAndEditView extends GetView<ShowAndEditController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShowAndEditView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ShowAndEditView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
