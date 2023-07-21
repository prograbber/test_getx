import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/main.dart';

class ScreenAController extends GetxController {
  void goToScreenB() {
    Get.find<MainScreenController>().changeScreen(TScreenType.B);
  }
}

class ScreenA extends StatelessWidget {
  final controller = Get.put(ScreenAController());

  ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: controller.goToScreenB,
        child: const Text('Go to Screen B'),
      ),
    );
  }
}
