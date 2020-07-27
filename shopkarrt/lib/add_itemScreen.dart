import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'itemData.dart';
class additem extends StatefulWidget {  
  
  @override
  _additemState createState() => _additemState();
}

class _additemState extends State<additem> {
  String newItem;
  @override
  Widget build(BuildContext context) {
      
    var itemprovider = Provider.of<Itemdata>(context);
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      
      child: Column(children: <Widget>[
        Text(
          'Add Item',
          textAlign:TextAlign.center,
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 30.0
          ),
        ),
        TextField(
          autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newItem = value;
              },

        ),
        FlatButton(
          onPressed: () {
            //print(newItem);
            itemprovider.addItems(newItem);
            Navigator.pop(context);
          },
          color: Colors.deepPurple[900],
          child: Text(
            'Add',
            style: TextStyle(
              color:Colors.white
            ),
          ),
        )
      ],),
      )
    );
  }
}