import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/binding_screen_controller.dart';

class BindingScreen extends GetView<BindingScreenController> {
  const BindingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('바인딩 예제 화면'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '이 화면은 자동으로 컨트롤러가 주입됩니다.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
              '카운트: ${controller.count}',
              style: const TextStyle(fontSize: 24),
            )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.increment,
              child: const Text('증가'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('뒤로 가기'),
            ),
          ],
        ),
      ),
    );
  }
}
