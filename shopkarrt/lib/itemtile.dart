import 'package:flutter/material.dart';

class itemTile extends StatelessWidget {
  itemTile({this.name,this.isChecked,this.checkboxCallback,this.deleteItemCallback});

  final String name;
  final bool isChecked;
  final Function checkboxCallback;
  final Function deleteItemCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteItemCallback,
      title: Text(
        name,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          decoration:isChecked?TextDecoration.lineThrough:null
        ),
      ),
      trailing: Checkbox(
        value: isChecked, 
        onChanged: checkboxCallback),
    );
  }
}