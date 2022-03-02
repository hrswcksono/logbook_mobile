import 'package:get/get.dart';

import 'package:logbook_mobile/app/modules/detail_aktivitas/bindings/detail_aktivitas_binding.dart';
import 'package:logbook_mobile/app/modules/detail_aktivitas/views/detail_aktivitas_view.dart';
import 'package:logbook_mobile/app/modules/home/bindings/home_binding.dart';
import 'package:logbook_mobile/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_AKTIVITAS,
      page: () => DetailAktivitasView(),
      binding: DetailAktivitasBinding(),
    ),
  ];
}
