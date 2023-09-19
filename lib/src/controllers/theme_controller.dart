import 'package:get/get.dart';

import '../themes/dark_theme.dart';
import '../themes/light_theme.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = true.obs;


  // Toggle between light and dark mode
  Future<void> toggleTheme(bool value) async {
    if (isDarkMode.value) {
      Get.changeTheme(lightTheme);
      update();
    } else {
      Get.changeTheme(darkTheme);
      update();
    }
    Future.delayed(const Duration(seconds: 2));
    isDarkMode.value = value;
    update();
  }
}