import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_management/db/db_helper.dart';
import 'package:task_management/services/theme_services.dart';
import 'package:task_management/themes/theme.dart';

import 'pages/auth/controllers/auth_controller.dart';
import 'pages/auth/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  // ignore: await_only_futures
  await GetStorage.init;
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      //Note: Pengaturan Warna Default
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,

      // ignore: prefer_const_constructors
      // home: HomePage(),
      // ignore: prefer_const_constructors
      home: LoginPage(),
    );
  }
}
