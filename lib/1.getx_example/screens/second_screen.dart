import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// GetX 예제의 두 번째 스크린
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // URL 파라미터 받기
    final id = Get.parameters['id'] ?? 'None';
    final name = Get.parameters['name'] ?? 'None';
    
    // 일반 arguments 받기
    final arguments = Get.arguments as Map<String, dynamic>?;
    final extraData = arguments?['data'] ?? 'No Data';

    return Scaffold(
      appBar: AppBar(
        title: const Text('두 번째 화면'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('URL 파라미터 - ID: $id'),
            Text('URL 파라미터 - Name: $name'),
            const SizedBox(height: 20),
            Text('추가 데이터: $extraData'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 결과값과 함께 이전 화면으로 돌아가기
                Get.back(result: '두 번째 화면에서 보낸 데이터');
              },
              child: const Text('결과값과 함께 돌아가기'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 모든 화면을 제거하고 홈으로 이동
                Get.offAllNamed('/');
              },
              child: const Text('홈으로 돌아가기 (모든 화면 제거)'),
            ),
          ],
        ),
      ),
    );
  }
}
