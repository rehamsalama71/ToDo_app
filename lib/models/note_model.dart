import 'package:flutter/material.dart';

class ToDo {
final  String title;

final  String id;
  bool isChecked;
  ToDo(
      {required this.id,
      required this.title,
      this.isChecked = false,
      });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', title: 'Morning Excercise',isChecked: true),
      ToDo(id: '02', title: 'Weekly Meeting ', ),
      ToDo(id: '03', title: 'Dinnar with family', ),
      ToDo(id: '04', title: 'Buy clothes', ),
    ];
  }
}
