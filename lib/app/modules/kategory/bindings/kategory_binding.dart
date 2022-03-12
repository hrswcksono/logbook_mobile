import 'package:get/get.dart';

import '../controllers/kategory_controller.dart';

class KategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KategoryController>(
      () => KategoryController(),
    );
  }
}
