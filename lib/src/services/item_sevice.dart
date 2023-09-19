import 'package:get/get.dart';

class ItemService extends GetxService {
  // Initialize an empty list to hold items
  final List<String> _items = [];

  // Getter to access the list of items
  List<String> get items => _items;

  // Method to add an item to the list
  void addItem(String item) {
    _items.add(item);
  }

  // Method to remove an item from the list
  void removeItem(String item) {
    _items.remove(item);
  }
}