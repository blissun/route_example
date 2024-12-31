import 'package:flutter/material.dart';

class CustomTransitionScreen extends StatelessWidget {
  const CustomTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('커스텀 트랜지션 화면'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('커스텀 트랜지션으로 진입한 화면입니다'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('뒤로 가기'),
            ),
          ],
        ),
      ),
    );
  }
}

/// 커스텀 페이지 트랜지션
class CustomPageRoute extends PageRouteBuilder {
  final Widget child;

  CustomPageRoute({required this.child})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // 확대/회전 효과
            const begin = 0.0;
            const end = 1.0;
            
            var rotate = Tween(begin: 0.0, end: 2.0 * 3.141592)
                .animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut));
            
            var scale = Tween(begin: begin, end: end)
                .animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut));

            return ScaleTransition(
              scale: scale,
              child: RotationTransition(
                turns: rotate,
                child: child,
              ),
            );
          },
        );
}
