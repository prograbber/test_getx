import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'screens/screen_a.dart';
import 'screens/screen_b.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

enum TScreenType { A, B }

class MainScreenController extends GetxController {
  var currentScreen = TScreenType.A.obs;

  void changeScreen(TScreenType screen) {
    currentScreen.value = screen;
  }
}

class MainScreen extends StatelessWidget {
  final mainScreenController = Get.put(MainScreenController());

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Sample App"),
      ),
      body: GetX<MainScreenController>(
        builder: (controller) {
          switch (controller.currentScreen.value) {
            case TScreenType.A:
              return ScreenA();
            case TScreenType.B:
              return ScreenB();
            default:
              return ScreenA();
          }
        },
      ),
    );
  }
}
