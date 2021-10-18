import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fktugas/app/data/entity/todolist.dart';
import 'package:fktugas/app/data/models/create_todolist.dart';
import 'package:fktugas/app/data/models/update_todolist.dart';
import 'package:fktugas/app/data/repository/todolist_repository.dart';

class TodolistRepositoryImpl implements TodolistRepository {
  CollectionReference _todolist = FirebaseFirestore.instance.collection('todolist');

  @override
  Future<void> create(CreateTodolist createTodolist) async {
    Todolist todolist = Todolist(
      author: createTodolist.author,
      todo: createTodolist.todo,
      description: createTodolist.description,
      created_at: DateTime.now().toIso8601String(),
    );

    await _todolist.add(todolist.toMap());
  }

  CollectionReference get todolist => _todolist;

  @override
  Future<void> update(UpdateTodolist updateTodolist, String doc) async {
    await _todolist.doc(doc).update(updateTodolist.toMap());
  }

  @override
  Future<Todolist> get(String docs) async {
    final doc = await _todolist.doc(docs).get();

    return Todolist(
        author: doc['author'], todo: doc['todo'], description: doc['description'], created_at: doc['created_at']);
  }

  @override
  Future<void> delete(String doc) async {
    await _todolist.doc(doc).delete();
  }
}
