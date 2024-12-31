import 'package:flutter/material.dart';

/// Navigator 예제의 두 번째 스크린
class SecondScreen extends StatelessWidget {
  final String? message;
  
  const SecondScreen({
    super.key,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (message != null)
              Text('전달받은 메시지: $message'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('그냥 돌아가기'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '결과 데이터 전달!');
              },
              child: const Text('데이터를 가지고 돌아가기'),
            ),
          ],
        ),
      ),
    );
  }
}
