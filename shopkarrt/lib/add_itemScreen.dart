import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'itemData.dart';
class additem extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    String newItem;
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
           
              textAlign: TextAlign.center,
              onChanged: (value) {
                newItem = value;
              },

        ),
        FlatButton(
          onPressed: () {
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