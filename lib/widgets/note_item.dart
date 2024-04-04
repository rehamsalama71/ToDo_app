import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tecno_notes_app/models/note_model.dart';
import 'package:tecno_notes_app/providers/favourite_provider.dart';

import 'package:tecno_notes_app/widgets/constant.dart';

class NoteItem extends StatelessWidget {
  NoteItem(
      {super.key,
      this.onToDoChanged,
      this.onDelete,
      required this.toDo,
      required this.favoriteProvider});
  final ToDo toDo;
  final onToDoChanged;

  final FavoriteProvider favoriteProvider;
  final onDelete;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoriteProvider>(
        create: (context) => FavoriteProvider(),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: GestureDetector(
            onTap: () {
              onToDoChanged(toDo);
            },
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kPrimaryColor)),
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        toDo.isChecked
                            ? Icons.check_circle
                            : Icons.check_circle_outline,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'add new note',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '12:00 - 11:00 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'work ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  GestureDetector(
                    onTap: () => favoriteProvider.toggleFavorite(
                        toDo), // Use FavoriteProvider to toggle favorite
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(
                        favoriteProvider.isExist(toDo)
                            ? Icons.star
                            : Icons.star_border_outlined,
                        color: Colors.blue, // Customize icon color
                      ),
                    ),
                  ),
                ],
              ),
              // child: ListTile(

              //     onTap: () {},
              //     contentPadding: EdgeInsets.all(8),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     tileColor: Colors.white,
              //     leading: const Icon(
              //       Icons.check_circle,
              //       color: kPrimaryColor,
              //     ),
              //     title: const Text(
              //       'hello',
              //       style: TextStyle(
              //         fontSize: 16,
              //         color: Colors.black,
              //       ),
              //     ),
              //     trailing: Container(
              //       child: IconButton(onPressed: () {}, icon: Icon(Icons.star)),
              //     ),
              //     ),
            ),
          ),
        ));
  }
}
