import 'package:fktugas/app/data/models/create_todolist.dart';
import 'package:fktugas/app/data/services/impl/todolist_service_impl.dart';
import 'package:fktugas/app/data/services/todolist_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateTodolistController extends GetxController {
  late TextEditingController authorController;
  late TextEditingController todoController;
  late TextEditingController descriptionController;

  TodolistService todolistService = TodolistServiceImpl();

  Future<void> createTodolist(CreateTodolist createTodolist) async {
    await todolistService.create(createTodolist);

    Get.back();
  }

  @override
  void onInit() {
    authorController = TextEditingController();
    todoController = TextEditingController();
    descriptionController = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    authorController.dispose();
    todoController.dispose();
    descriptionController.dispose();
    super.onClose();
  }
}
