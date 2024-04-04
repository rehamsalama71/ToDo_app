import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tecno_notes_app/models/note_model.dart';
import 'package:tecno_notes_app/providers/todo_provider.dart';

class CustomButton extends StatefulWidget {
   CustomButton({super.key, required this.text});
  final String text;
final navigatorKey = GlobalKey<NavigatorState>();
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  final todoList = ToDo.todoList();
  final todoController = TextEditingController();
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
     final todoProvider = Provider.of<TodoListProvider>(context);
    return GestureDetector(
      onTap: () {
       final String todo = todoController.text;
        final String category = 'Uncategorized';
        todoProvider.addToDoItem(todo);
        todoController.clear();
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff6281D1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void addToDoItem(String todo) {
    setState(() {
      todoList.add(ToDo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          title: todo,
          ));
    });
    todoController.clear();
  }
}
