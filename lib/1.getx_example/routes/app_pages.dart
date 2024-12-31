import 'package:get/get.dart';
import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import '../screens/unknown_screen.dart';
import '../screens/middleware_screen.dart';
import '../screens/binding_screen.dart';
import '../bindings/binding_screen_binding.dart';
import '../middlewares/auth_middleware.dart';

/// GetX 라우트 경로 상수
abstract class Routes {
  static const home = '/';
  static const second = '/second';
  static const middleware = '/middleware';
  static const binding = '/binding';
  static const unknown = '/unknown';
}

/// GetX의 라우트 페이지들을 정의하는 클래스
class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: Routes.second,
      page: () => const SecondScreen(),
      transition: Transition.rightToLeft,
      // 동적 URL 파라미터
    ),
    GetPage(
      name: Routes.middleware,
      page: () => const MiddlewareScreen(),
      middlewares: [AuthMiddleware()],
      transition: Transition.zoom,
    ),
    GetPage(
      name: Routes.binding,
      page: () => const BindingScreen(),
      binding: BindingScreenBinding(),
      transition: Transition.cupertino,
    ),
  ];

  // 404 페이지
  static final unknownRoute = GetPage(
    name: Routes.unknown,
    page: () => const UnknownScreen(),
  );
}
