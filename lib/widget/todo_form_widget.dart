import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangeTitle;
  final ValueChanged<String> onChangeDescription;
  final VoidCallback onSaveTodo;

  const TodoFormWidget({
    Key? key,
    this.title = "",
    this.description = "",
    required this.onChangeTitle,
    required this.onChangeDescription,
    required this.onSaveTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildTitle(),
            SizedBox(height: 8),
            buildDescription(),
            SizedBox(height: 8),
            buildButton(),
          ],
        ),
      );

  Widget buildTitle() => TextFormField(
        maxLines: 1,
        initialValue: title,
        onChanged: onChangeTitle,
        validator: (title) {
          if (title!.isEmpty) {
            return "The Title cannot be empty";
          }

          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Title',
        ),
      );

  Widget buildDescription() => TextFormField(
        maxLines: 3,
        initialValue: title,
        onChanged: onChangeDescription,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Description',
        ),
      );
  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: onSaveTodo,
          child: Text("Save"),
        ),
      );
}
