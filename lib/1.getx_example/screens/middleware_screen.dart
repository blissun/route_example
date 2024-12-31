import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiddlewareScreen extends StatelessWidget {
  const MiddlewareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('미들웨어 보호 화면'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '이 화면은 미들웨어로 보호되어 있습니다.\n로그인하지 않으면 접근할 수 없습니다.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
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
