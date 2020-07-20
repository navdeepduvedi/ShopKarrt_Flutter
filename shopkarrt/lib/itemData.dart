import 'package:flutter/material.dart';
import 'items.dart';
import 'dart:collection';

class Itemdata extends ChangeNotifier{

List<items> item = [
  items(name: 'Eggs 2 Dozen'),
];
int get itemCount{
    return item.length;
}
void addItems(String itemName){
  final newitem = items(name: itemName);
  item.add(newitem);
  notifyListeners();
}

}