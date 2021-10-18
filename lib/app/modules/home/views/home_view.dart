import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fktugas/app/routes/app_pages.dart';
import 'package:fktugas/app/widgets/loading.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: controller.todolistStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Loading();
          }

          return ListView(
            children: snapshot.data!.docs.map((e) {
              Map<String, dynamic> data = e.data()! as Map<String, dynamic>;

              return ListTile(
                title: Text(data['todo']),
                leading: CircleAvatar(),
                subtitle: Text(data['author']),
                onTap: () {
                  Get.toNamed(Routes.UPDATE_PERSON, arguments: {'docs': e.id});
                },
                trailing: IconButton(onPressed: () async => await controller.delete(e.id), icon: Icon(Icons.delete)),
              );
            }).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.CREATE_TODOLIST),
        child: Icon(Icons.add),
      ),
    );
  }
}
