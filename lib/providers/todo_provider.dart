import 'package:flutter/foundation.dart';
import 'package:tecno_notes_app/models/note_model.dart';

class TodoListProvider extends ChangeNotifier {
  List<ToDo> todoList = ToDo.todoList();

  void addToDoItem(String todo) {
    todoList.add(ToDo(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: todo,
      
    ));
    notifyListeners(); // Notify listeners (CustomListView) of changes
  }
}
