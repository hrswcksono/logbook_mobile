import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logbook_mobile/myhttpovverides.dart';

import 'app/routes/app_pages.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
