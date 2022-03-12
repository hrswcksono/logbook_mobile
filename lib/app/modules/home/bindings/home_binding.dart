import 'package:get/get.dart';

import 'package:logbook_mobile/app/modules/home/controllers/listhome_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListhomeController>(
      () => ListhomeController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
