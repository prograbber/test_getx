# test_getx

Flutter
Getx 모듈을 사용해서 appbar를 유지한체 화면 전환 샘플

```dart
enum TScreenType { A, B }

class MainScreenController extends GetxController {
  var currentScreen = TScreenType.A.obs;

  void changeScreen(TScreenType screen) {
    currentScreen.value = screen;
  }
}

  body: GetX<MainScreenController>()

class ScreenAController extends GetxController {
  void goToScreenB() {
    Get.find<MainScreenController>().changeScreen(TScreenType.B);
  }
}
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
