import 'package:fktugas/app/data/models/update_todolist.dart';
import 'package:fktugas/app/utils/property.dart';
import 'package:fktugas/app/widgets/textfield_default.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_person_controller.dart';

class UpdatePersonView extends GetView<UpdatePersonController> {
  @override
  Widget build(BuildContext context) {
    controller.getTodolist(Get.arguments['docs']).then((value) {
      controller.authorController.text = value.author;
      controller.descriptionController.text = value.description;
      controller.todoController.text = value.todo;
    });

    // print(Get.arguments['docs']);

    return Scaffold(
      appBar: AppBar(
        title: Text('UpdatePersonView'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(Property.defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFieldDefault(
              controller: controller.authorController,
              hint: 'author',
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: Property.defaultMargin),
            TextFieldDefault(
              controller: controller.todoController,
              hint: 'todo',
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: Property.defaultMargin),
            TextFieldDefault(
              controller: controller.descriptionController,
              hint: 'description',
              textInputAction: TextInputAction.done,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => controller.updateTodolist(
          UpdateTodolist(
            author: controller.authorController.text,
            todo: controller.todoController.text,
            description: controller.descriptionController.text,
          ),
          Get.arguments['docs'],
        ),
        child: Icon(Icons.done),
      ),
    );
  }
}
