import 'package:flutter/material.dart';

class listscreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[900],
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder:(context)=>SingleChildScrollView(
              child:Container(
                
              )
            )
            );
        }
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
                    "13 Items",
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
             child: ListView.builder(
               itemBuilder: (context,index){
                 
               }
               ),
          ))
      ],),
    
    );
  }
}