import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(isChecked, checkboxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final dynamic toggleCheckboxState;

  TaskCheckBox(this.checkboxState, this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: toggleCheckboxState);
  }
}
