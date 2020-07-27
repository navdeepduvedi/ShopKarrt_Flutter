import 'package:flutter/material.dart';
import 'package:shopkarrt/add_itemScreen.dart';
import 'package:provider/provider.dart';
import 'package:shopkarrt/listview.dart';
import 'itemData.dart';
class listscreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<Itemdata>(context);
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      floatingActionButton: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
            backgroundColor: Colors.deepPurple[900],
            child: Icon(Icons.add),
            onPressed: (){
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder:(context)=>SingleChildScrollView(
                  child:Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: additem(),
                  )
                )
                );
            }
            ),
          ),
          Align(
            alignment : Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: FloatingActionButton(
                onPressed: (){
                   showDialog(
                     context: context,
                     child: Dialog(
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
                            )
                        ],),
                      ),
                  ),
                   );
                } ,
                backgroundColor:Colors.red ,
                child: Text(
                  'Clear'
                ),
                ),
            ),
          )
      ],
          
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:10.0,top:60.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.deepPurple[900],
                      child: Icon(
                        Icons.list,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      'ITEMS',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white
                      ),
                    )
                  ],),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "${Provider.of<Itemdata>(context).itemCount} Items",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),
                  )
              ],),
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
             child: TasksList(),
          )),
      ],),
    
    );
  }
}