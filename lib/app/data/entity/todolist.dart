class Todolist {
  String author;
  String todo;
  String description;
  String created_at;

  Todolist({
    required this.author,
    required this.todo,
    required this.description,
    required this.created_at,
  });

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'todo': todo,
      'description': description,
      'created_at': created_at,
    };
  }

  factory Todolist.fromMap(Map<String, dynamic> map) {
    return Todolist(
      author: map['author'],
      todo: map['todo'],
      description: map['description'],
      created_at: map['created_at'],
    );
  }

  @override
  String toString() {
    return 'Todolist(author: $author, todo: $todo, description: $description, created_at: $created_at)';
  }
}
