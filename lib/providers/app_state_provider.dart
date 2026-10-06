import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:i12_into_012/models/app_state.dart';
import 'package:i12_into_012/models/todo.dart';

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>((
  ref,
) {
  return AppStateNotifier();
});

class AppStateNotifier extends Notifier<AppState> {
  void addTodo(String text) {
    // add new Todo
  }

  void toggleTodo(Todo toDo) {
    // toggle completion status
  }

  void deleteTodos(List<Todo> toDos) {
    // delete selected Todos
  }

  void toggleDarkMode() {
    // switch theme
  }

  void toggleDeletionConfirmation() {
    // toggle confirmation setting
  }

  void loadState() {
    // load state from storage
  }

  void saveState() {
    // save state to storage
  }



  @override
  AppState build() {
    // Initialize with default state
    return AppState(
      todos: [],
      isDarkMode: false,
      asksForDeletionConfirmation: true,
    );
  }
}


- Always use `copyWith` to update state immutably.