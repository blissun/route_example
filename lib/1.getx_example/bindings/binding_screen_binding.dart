import 'package:get/get.dart';
import '../controllers/binding_screen_controller.dart';

class BindingScreenBinding implements Bindings {
  @override
  void dependencies() {
    // 화면에 진입할 때 컨트롤러를 주입
    Get.lazyPut(() => BindingScreenController());
  }
}
