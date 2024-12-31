import 'package:flutter/material.dart';

class NestedScreen extends StatelessWidget {
  final Widget child;

  const NestedScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue[100],
            padding: const EdgeInsets.all(16),
            child: const SafeArea(
              bottom: false,
              child: Text(
                '이것은 중첩 네비게이션의 상단 영역입니다',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
