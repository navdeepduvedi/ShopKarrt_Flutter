
import 'package:flutter/material.dart';
import 'package:shopkarrt/itemData.dart';
import 'listScreen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>Itemdata() ,
      
      child: MaterialApp(
      home: listscreen(),
      ),
    );
  }
}
