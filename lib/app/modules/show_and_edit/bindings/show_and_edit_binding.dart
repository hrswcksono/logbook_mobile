import 'package:get/get.dart';

import '../controllers/show_and_edit_controller.dart';

class ShowAndEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowAndEditController>(
      () => ShowAndEditController(),
    );
  }
}
