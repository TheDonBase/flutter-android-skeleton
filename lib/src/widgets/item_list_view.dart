import 'package:android_flutter_template/src/controllers/item_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemListView extends StatelessWidget {
  final ItemController itemController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: ListView.builder(
        itemCount: itemController.itemService.items.length,
        itemBuilder: (context, index) {
          final item = itemController.itemService.items[index];
          return ListTile(
            title: Text(item),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                itemController.removeItem(item);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show a dialog to add a new item
          // ...
        },
        child: Icon(Icons.add),
      ),
    );
  }
}