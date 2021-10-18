import 'package:fktugas/app/data/entity/todolist.dart';
import 'package:fktugas/app/data/models/create_todolist.dart';
import 'package:fktugas/app/data/models/update_todolist.dart';

abstract class TodolistService {
  Future<void> create(CreateTodolist createTodolist);
  Future<void> update(UpdateTodolist updateTodolist, String doc);
  Future<Todolist> get(String doc);
  Future<void> delete(String doc);
}
