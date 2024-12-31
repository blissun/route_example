import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // 인증 상태를 시뮬레이션 (실제로는 로그인 상태를 확인해야 함)
    bool isAuthenticated = false;

    // 인증되지 않은 경우 홈으로 리다이렉트
    if (!isAuthenticated) {
      Get.snackbar(
        '접근 제한',
        '이 페이지는 로그인이 필요합니다.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return const RouteSettings(name: '/');
    }
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    print('페이지 호출됨: ${page?.name}');
    return page;
  }
}
