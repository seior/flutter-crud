import 'package:fktugas/app/data/entity/todolist.dart';
import 'package:fktugas/app/data/models/update_todolist.dart';
import 'package:fktugas/app/data/services/impl/todolist_service_impl.dart';
import 'package:fktugas/app/data/services/todolist_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdatePersonController extends GetxController {
  late TextEditingController authorController;
  late TextEditingController todoController;
  late TextEditingController descriptionController;

  TodolistService todolistService = TodolistServiceImpl();

  Future<void> updateTodolist(UpdateTodolist updateTodolist, String doc) async {
    todolistService.update(updateTodolist, doc).then((_) => Get.back());
  }

  Future<Todolist> getTodolist(String doc) async {
    return await todolistService.get(doc);
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
