import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import '../screens/error_screen.dart';

/// GoRouter 설정
final router = GoRouter(
  // 초기 경로 설정
  initialLocation: '/',
  
  // 에러 페이지 설정
  errorBuilder: (context, state) => ErrorScreen(error: state.error),
  
  // 라우트 설정
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/second/:message',
      builder: (context, state) {
        final message = state.pathParameters['message'] ?? 'No message';
        return SecondScreen(message: message);
      },
    ),
  ],
);
