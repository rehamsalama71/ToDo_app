import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tecno_notes_app/models/note_model.dart';
import 'package:tecno_notes_app/providers/favourite_provider.dart';
import 'package:tecno_notes_app/widgets/note_item.dart';

class CustomListVieww extends StatelessWidget {
  const CustomListVieww(
      {super.key, required this.todos, required this.onToggleFavorite});
  final List<ToDo> todos;
  final Function(ToDo) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        final favoriteProvider =
            Provider.of<FavoriteProvider>(context); // Access FavoriteProvider

        return NoteItem(
          favoriteProvider: favoriteProvider,
          toDo: todo,
        );
      },
    );
  }
}
