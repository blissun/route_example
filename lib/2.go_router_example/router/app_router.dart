import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import '../screens/error_screen.dart';
import '../screens/nested_screen.dart';
import '../screens/detail_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

/// go_router 구성
final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  debugLogDiagnostics: true,
  
  // 에러 핸들링
  errorBuilder: (context, state) => ErrorScreen(error: state.error),
  
  routes: [
    // 홈 화면
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    
    // 중첩 네비게이션을 위한 ShellRoute
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => NestedScreen(child: child),
      routes: [
        // 두 번째 화면 (파라미터 포함)
        GoRoute(
          path: '/second/:message',
          name: 'second',
          builder: (context, state) {
            final message = state.pathParameters['message'] ?? 'No Message';
            final extraData = state.extra as String?;
            return SecondScreen(
              message: message,
              extraData: extraData,
            );
          },
        ),
        
        // 상세 화면
        GoRoute(
          path: '/detail/:id',
          name: 'detail',
          builder: (context, state) {
            final id = state.pathParameters['id'] ?? '';
            return DetailScreen(id: id);
          },
        ),
      ],
    ),
  ],
);
