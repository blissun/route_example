import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// GoRouter 예제의 두 번째 스크린
class SecondScreen extends StatelessWidget {
  final String message;
  final String? extraData;

  const SecondScreen({
    super.key,
    required this.message,
    this.extraData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('두 번째 화면'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'URL 파라미터: $message',
              style: const TextStyle(fontSize: 18),
            ),
            if (extraData != null) ...[
              const SizedBox(height: 16),
              Text(
                '추가 데이터: $extraData',
                style: const TextStyle(fontSize: 18),
              ),
            ],
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 상세 화면으로 이동
                context.pushNamed(
                  'detail',
                  pathParameters: {'id': '123'},
                );
              },
              child: const Text('상세 화면으로 이동'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('뒤로 가기'),
            ),
          ],
        ),
      ),
    );
  }
}
