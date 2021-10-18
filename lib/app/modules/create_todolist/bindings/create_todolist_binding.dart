import 'package:get/get.dart';

import '../controllers/create_todolist_controller.dart';

class CreateTodolistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateTodolistController>(
      () => CreateTodolistController(),
    );
  }
}
