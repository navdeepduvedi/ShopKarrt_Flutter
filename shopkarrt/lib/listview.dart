import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkarrt/itemData.dart';

import 'package:shopkarrt/itemtile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Itemdata>(
      builder: (context, itemdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final item = itemdata.item[index];
            return itemTile(
              name: item.name,
              isChecked: item.isDone,
              checkboxCallback: (checkboxState) {
                itemdata.updateItem(item);
              },
              deleteItemCallback: (){
                itemdata.deleteItem(item);
              },
             
            );
          },
          itemCount: itemdata.itemCount,
        );
      },
    );
  }
}