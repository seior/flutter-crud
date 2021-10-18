import 'package:fktugas/app/data/entity/todolist.dart';
import 'package:fktugas/app/data/models/create_todolist.dart';
import 'package:fktugas/app/data/models/update_todolist.dart';
import 'package:fktugas/app/data/repository/impl/todolist_repository_impl.dart';
import 'package:fktugas/app/data/services/todolist_service.dart';

class TodolistServiceImpl implements TodolistService {
  @override
  Future<void> create(CreateTodolist createTodolist) async {
    await TodolistRepositoryImpl().create(createTodolist);
    return;
  }

  @override
  Future<void> update(UpdateTodolist updateTodolist, String doc) async {
    await TodolistRepositoryImpl().update(updateTodolist, doc);
    return;
  }

  @override
  Future<Todolist> get(String doc) async {
    return await TodolistRepositoryImpl().get(doc);
  }

  @override
  Future<void> delete(String doc) async {
    return await TodolistRepositoryImpl().delete(doc);
  }
}
