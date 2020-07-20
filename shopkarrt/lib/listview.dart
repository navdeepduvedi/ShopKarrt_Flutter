import 'package:flutter/material.dart';

import 'package:shopkarrt/itemtile.dart';

class itemlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){
        return itemTile();
    });
  }
}
