import 'package:flutter/material.dart';
import 'items.dart';
import 'dart:collection';

class Itemdata extends ChangeNotifier{

List<items> _item = [];

UnmodifiableListView<items> get item {
    return UnmodifiableListView(_item);
  }
int get itemCount{
    return _item.length;
}
void addItems(String itemName){
  final newitem = items(name: itemName);
  _item.add(newitem);
  notifyListeners();
}
void updateItem(items item){
  item.toggleDone();
  notifyListeners();
}
void deleteItem(items item){
  _item.remove(item);
  notifyListeners();
}

void cleanList(){
  _item.clear();
  notifyListeners();
}
}