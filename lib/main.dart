import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:tecno_notes_app/providers/favourite_provider.dart';
import 'package:tecno_notes_app/providers/global.dart';
import 'package:tecno_notes_app/providers/todo_provider.dart';
import 'package:tecno_notes_app/pages/home_page.dart';

void main() {
  globalFavoriteProvider = FavoriteProvider(); // Initialize globally
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => TodoListProvider()),
            ChangeNotifierProvider(create: (_) => FavoriteProvider()),
          ],
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          ));
}
