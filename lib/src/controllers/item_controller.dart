import 'package:android_flutter_template/src/services/item_sevice.dart';
import 'package:get/get.dart';

class ItemController extends GetxController {
  final ItemService itemService = Get.find<ItemService>();

  void addItem(String item) {
    itemService.addItem(item);
  }

  void removeItem(String item) {
    itemService.removeItem(item);
  }
}