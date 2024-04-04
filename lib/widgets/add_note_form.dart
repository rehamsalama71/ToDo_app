import 'package:flutter/material.dart';
import 'package:tecno_notes_app/models/note_model.dart';
import 'package:tecno_notes_app/widgets/custom_button.dart';

import 'package:tecno_notes_app/widgets/custom_text_fieled.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key, required this.onAddNote,
  });
 final Function(String, String) onAddNote;
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  final todoList = ToDo.todoList();
  final todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 5,
            hint: 'Category',
          ),
          const SizedBox(
            height: 32,
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () {
                addToDoItem(todoController.text);
                 widget.onAddNote(title ?? '', subTitle ?? '');
              },
              child: Text('Add'))
        ],
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
