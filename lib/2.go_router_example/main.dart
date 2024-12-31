// GoRouter를 사용한 라우팅 예제의 메인 파일
// URL 기반의 라우팅과 중첩 라우팅을 구현한 예제
// 웹과 모바일 플랫폼에서 일관된 라우팅 경험을 제공

import 'package:flutter/material.dart';
import 'router/app_router.dart';

void main() {
  runApp(const GoRouterExampleApp());
}

/// GoRouter를 이용한 라우팅 예제 앱
class GoRouterExampleApp extends StatelessWidget {
  const GoRouterExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoRouter 라우팅 예제',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      routerConfig: goRouter,
    );
  }
}
