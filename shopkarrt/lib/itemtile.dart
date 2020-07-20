import 'package:flutter/material.dart';

class itemTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '',
        style: TextStyle(
          decoration:TextDecoration.lineThrough
        ),
      ),
      trailing: Checkbox(
        value: null, 
        onChanged: null),
    );
  }
}