import 'package:android_flutter_template/src/controllers/theme_controller.dart';
import 'package:android_flutter_template/src/screens/home_screen.dart';
import 'package:android_flutter_template/src/themes/dark_theme.dart';
import 'package:android_flutter_template/src/themes/light_theme.dart';
import 'package:android_flutter_template/src/utils/AppBindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Obx(() {
      final isDarkTheme = themeController.isDarkMode.value == true;
      return GetMaterialApp(
        theme: isDarkTheme ? darkTheme : lightTheme,
        initialBinding: AppBindings(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      );
    });
  }
}