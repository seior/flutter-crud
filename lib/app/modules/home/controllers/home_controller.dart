import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fktugas/app/data/repository/impl/todolist_repository_impl.dart';
import 'package:fktugas/app/data/services/impl/todolist_service_impl.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final Stream<QuerySnapshot> todolistStream = TodolistRepositoryImpl().todolist.snapshots();

  Future<void> delete(String doc) async {
    await TodolistServiceImpl().delete(doc);
  }
}
