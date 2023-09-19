import 'package:android_flutter_template/src/controllers/item_controller.dart';
import 'package:get/get.dart';

import '../controllers/theme_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ThemeController>(ThemeController());
    Get.put<ItemController>(ItemController());
  }

}