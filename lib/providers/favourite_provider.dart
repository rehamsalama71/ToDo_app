
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tecno_notes_app/models/note_model.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ToDo> _favorites = [];
  List<ToDo> get favorites => _favorites;
  void toggleFavorite(ToDo toDo) {
    if (_favorites.contains(toDo)) {
      _favorites.remove(toDo);
    } else {
      _favorites.add(toDo);
    }
    notifyListeners();
  }

  bool isExist(ToDo toDo) {
    final isExist = _favorites.contains(toDo);
    return isExist;
  }

  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
