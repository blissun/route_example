import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoRouter 라우팅 예제 - 홈'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildSection(
                '기본 네비게이션',
                [
                  ElevatedButton(
                    onPressed: () {
                      // go를 사용한 기본 네비게이션
                      context.go('/second/SimpleMessage');
                    },
                    child: const Text('go로 이동 (스택 교체)'),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // push를 사용한 기본 네비게이션
                      context.push('/second/PushMessage');
                    },
                    child: const Text('push로 이동 (스택 추가)'),
                  ),
                ],
              ),
              _buildSection(
                '데이터 전달',
                [
                  ElevatedButton(
                    onPressed: () {
                      // extra 데이터와 함께 이동
                      context.push(
                        '/second/WithExtra',
                        extra: '추가 데이터입니다!',
                      );
                    },
                    child: const Text('추가 데이터와 함께 이동'),
                  ),
                ],
              ),
              _buildSection(
                'Named 라우트',
                [
                  ElevatedButton(
                    onPressed: () {
                      // pushNamed를 사용한 네비게이션
                      context.pushNamed(
                        'second',
                        pathParameters: {'message': 'NamedRoute'},
                        extra: 'Named 라우트로 전달된 데이터',
                      );
                    },
                    child: const Text('Named 라우트로 이동'),
                  ),
                ],
              ),
              _buildSection(
                '에러 핸들링',
                [
                  ElevatedButton(
                    onPressed: () {
                      // 잘못된 경로로 이동
                      context.push('/invalid-route');
                    },
                    child: const Text('잘못된 경로로 이동'),
                  ),
                ],
              ),
              _buildSection(
                '중첩 네비게이션',
                [
                  ElevatedButton(
                    onPressed: () {
                      // 상세 화면으로 이동
                      context.pushNamed(
                        'detail',
                        pathParameters: {'id': '999'},
                      );
                    },
                    child: const Text('상세 화면으로 이동'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...children,
        ],
      ),
    );
  }
}
