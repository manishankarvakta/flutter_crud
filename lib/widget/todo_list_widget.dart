import 'package:flutter/material.dart';
import 'package:flutter_crud/model/todo.dart';
import 'package:flutter_crud/widget/todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TodoWidget(
        todo: Todo(
      createdTime: DateTime.now(),
      title: 'THis is the todo titles',
      id: '',
    ));
  }
}
