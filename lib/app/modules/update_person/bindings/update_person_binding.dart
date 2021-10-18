import 'package:get/get.dart';

import '../controllers/update_person_controller.dart';

class UpdatePersonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdatePersonController>(
      () => UpdatePersonController(),
    );
  }
}
