class UpdateTodolist {
  String author;
  String todo;
  String description;

  UpdateTodolist({
    required this.author,
    required this.todo,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'todo': todo,
      'description': description,
    };
  }
}
