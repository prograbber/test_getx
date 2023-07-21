import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/main.dart';

class ScreenBController extends GetxController {
  void goToScreenA() {
    Get.find<MainScreenController>().changeScreen(TScreenType.A);
  }
}

class ScreenB extends StatelessWidget {
  final controller = Get.put(ScreenBController());

  ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: controller.goToScreenA,
        child: const Text('Go to Screen A'),
      ),
    );
  }
}
