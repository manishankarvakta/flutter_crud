import 'package:flutter/material.dart';
import 'package:flutter_crud/widget/todo_form_widget.dart';

class AddTodoDialogWidget extends StatefulWidget {
  AddTodoDialogWidget({Key? key}) : super(key: key);

  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = "";
  String description = "";

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Add Todo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TodoFormWidget(
              onChangeTitle: (title) => setState(() => this.title = title),
              onChangeDescription: (description) =>
                  setState(() => this.description = description),
              onSaveTodo: () {},
            ),
          ],
        ),
      );
}
