import 'package:get/get.dart';

class BindingScreenController extends GetxController {
  final count = 0.obs;

  void increment() {
    count.value++;
  }

  @override
  void onInit() {
    super.onInit();
    print('BindingScreenController initialized');
  }

  @override
  void onClose() {
    print('BindingScreenController disposed');
    super.onClose();
  }
}
