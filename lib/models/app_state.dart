import 'package:i12_into_012/models/todo.dart';

class AppState {
  final List<Todo> todos;
  final bool isDarkMode;
  final bool? asksForDeletionConfirmation;

  AppState({
    required this.todos,
    this.isDarkMode = false,
    this.asksForDeletionConfirmation,
  });

  Map<String, dynamic> toJson(
    List<Todo> todos,
    bool isDarkMode,
    bool? asksForDeletionConfirmation,
  ) {
    Map<String, dynamic> json = {
      'todos': todos,
      'isDarkMode': isDarkMode,
      'asksForDeletionConfirmation': asksForDeletionConfirmation,
    };

    return json;
  }

  factory AppState.fromJson(Map<String, dynamic> json) => AppState(
    todos: json['todos'],
    isDarkMode: json['isDarkMode'],
    asksForDeletionConfirmation: json['asksForDeletionConfirmation'],
  );

  AppState copyWith({
    List<Todo>? todos,
    bool? isDarkMode,
    bool? asksForDeletionConfirmation,
  }) {
    return AppState(
      todos: todos ?? this.todos,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      asksForDeletionConfirmation:
          asksForDeletionConfirmation ?? this.asksForDeletionConfirmation,
    );
  }

  @override
  bool operator ==(Object other) {
    if (other is AppState) {
      return todos == other.todos;
    } else
      return false;
  }

  @override
  int get hashCode => todos.hashCode;
}
