import 'package:flutter/material.dart';

class itemTile extends StatelessWidget {
  itemTile({this.name,this.isChecked,this.checkboxCallback});

  final String name;
  final bool isChecked;
  final Function checkboxCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          decoration:isChecked?TextDecoration.lineThrough:null
        ),
      ),
      trailing: Checkbox(
        value: isChecked, 
        onChanged: checkboxCallback),
    );
  }
}