import 'package:fktugas/app/data/models/create_todolist.dart';
import 'package:fktugas/app/utils/property.dart';
import 'package:fktugas/app/widgets/textfield_default.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_todolist_controller.dart';

class CreateTodolistView extends GetView<CreateTodolistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CreateTodolistView'),
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
        onPressed: () async => controller.createTodolist(
          CreateTodolist(
            author: controller.authorController.text,
            todo: controller.todoController.text,
            description: controller.descriptionController.text,
          ),
        ),
        child: Icon(Icons.done),
      ),
    );
  }
}
