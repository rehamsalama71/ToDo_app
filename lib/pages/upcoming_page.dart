import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tecno_notes_app/models/note_model.dart';
import 'package:tecno_notes_app/providers/favourite_provider.dart';
import 'package:tecno_notes_app/widgets/add_note_form.dart';
import 'package:tecno_notes_app/widgets/custom_app_Bar.dart';
import 'package:tecno_notes_app/widgets/custom_list_view.dart';
import 'package:tecno_notes_app/widgets/custom_table_calender.dart';

class UpcomingPage extends StatefulWidget {
  const UpcomingPage({super.key});

  @override
  State<UpcomingPage> createState() => _UpcomingPageState();
}

class _UpcomingPageState extends State<UpcomingPage> {
  final todoList = ToDo.todoList();

  void addToDoItem(String todo, String category) {
    setState(() {
      todoList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: todo,
      
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF27C7A),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return  AddNoteForm(
                   onAddNote: addToDoItem,
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
                text: 'Upcoming',
                fontSize: 20,
                icon: Icon(FontAwesomeIcons.calendarCheck)),
            CustomTableCalender(),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 800,
              child: CustomListVieww(
                  todos: todoList, onToggleFavorite: toggleFavorite),
            )
          ],
        ),
      ),
    );
  }

  void toggleFavorite(ToDo todo) {
    final favoriteProvider =
        Provider.of<FavoriteProvider>(context, listen: false);
    favoriteProvider.toggleFavorite(todo);
  }
}
