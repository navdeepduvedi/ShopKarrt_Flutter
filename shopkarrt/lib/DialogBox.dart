import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'itemData.dart';

class DialogBox extends StatelessWidget {
  DialogBox({this.itemProvider});

  final Itemdata itemProvider;

  @override
  Widget build(BuildContext context) {
    return Dialog(
     elevation: 20.0,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
     child: Container(
       padding: EdgeInsets.all(20.0),
       height: 250.0,
       child: Column(children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Text(
             'Do you really want    to clear the list?',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 30.0,
             ),
           ),
         ),
         SizedBox(
           height: 20.0,
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             FlatButton(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
               color: Colors.red,
               child: Text(
                 'Yes',
                 style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20.0,
               ),
               ) ,
               onPressed: (){
                 itemProvider.cleanList();
                 Navigator.pop(context);
               },
               ),
               SizedBox(width: 30.0,),
               FlatButton(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
               color: Colors.deepPurple,
               child: Text(
                 'No',
                 style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20.0,
               ),
               ) ,
               onPressed: (){
                 
                 Navigator.pop(context);
               },
               ),
           ],
         )
       ],),
     ),
                  );
  }
}