import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

class Todo {
  final String id;
  final String text;
  final bool isCompleted;

  Todo({String? id, required this.text, this.isCompleted = false})
    : id = id ?? Uuid().v4();

  Map<String, dynamic> toJson(String id, String text, bool isCompleted) {
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

  // copyWith erstellt hier eine neue UUID, unklar ob das so gewollt ist, oder die alte übernommen werden soll
  Todo copyWith({String? text, bool? isCompleted}) => Todo(
    id: id,
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
