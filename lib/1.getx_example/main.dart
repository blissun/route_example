// GetX를 사용한 라우팅 예제의 메인 파일
// GetX의 상태관리와 라우팅 기능을 보여주는 예제
// Get.to(), Get.back() 등의 네비게이션 메서드 사용 방법 포함

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const GetXExampleApp());
}

/// GetX를 이용한 라우팅 예제 앱
class GetXExampleApp extends StatelessWidget {
  const GetXExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX 라우팅 예제',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      // GetX의 라우트 관리
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      unknownRoute: AppPages.unknownRoute,
      defaultTransition: Transition.fade,
    );
  }
}
