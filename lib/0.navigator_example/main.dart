// Flutter의 기본 Navigator를 사용한 라우팅 예제의 메인 파일
// Navigator.push(), Navigator.pop() 등 기본적인 네비게이션 기능 구현
// 화면 간 데이터 전달 방법도 포함

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/second_screen.dart';

void main() {
  runApp(const NavigatorExampleApp());
}

/// Navigator를 이용한 라우팅 예제 앱
class NavigatorExampleApp extends StatelessWidget {
  const NavigatorExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator 예제',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      // Named 라우트 정의
      routes: {
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}
