import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final Function checkCallback;
  final Function onLongPress;
  TaskTile({this.name, this.isChecked, this.checkCallback, this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: CheckboxListTile(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkCallback,
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
