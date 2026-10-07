import 'package:uuid/uuid.dart';

class Todo {
  final String id;
  final String text;
  final bool isCompleted;

  Todo({String? id, required this.text, this.isCompleted = false})
    : id = id ?? Uuid().v4();

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'id': id,
      'text': text,
      'isCompleted': isCompleted,
    };

    return json;
  }

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
    id: json['id'],
    text: json['text'],
    isCompleted: json['isCompleted'],
  );

  Todo copyWith({String? id, String? text, bool? isCompleted}) => Todo(
    id: id ?? this.id,
    text: text ?? this.text,
    isCompleted: isCompleted ?? this.isCompleted,
  );

  @override
  bool operator ==(Object other) {
    if (other is Todo) {
      return id == other.id;
    } else
      return false;
  }

  @override
  int get hashCode => id.hashCode;
}
