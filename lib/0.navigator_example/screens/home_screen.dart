import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'custom_transition_screen.dart';

/// Navigator 예제의 홈 스크린
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator 예제 - 홈'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Navigator의 다양한 기능들',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              // 1. 기본 네비게이션
              _buildSection(
                '기본 네비게이션',
                [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondScreen(),
                        ),
                      );
                    },
                    child: const Text('기본 화면 전환'),
                  ),
                ],
              ),

              // 2. 데이터 전달
              _buildSection(
                '데이터 전달',
                [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondScreen(
                            message: '홈에서 전달한 메시지',
                          ),
                        ),
                      );
                    },
                    child: const Text('데이터와 함께 화면 전환'),
                  ),
                ],
              ),

              // 3. 결과값 받기
              _buildSection(
                '결과값 받기',
                [
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.push<String>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondScreen(),
                        ),
                      );

                      if (context.mounted && result != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('받은 결과: $result')),
                        );
                      }
                    },
                    child: const Text('결과를 기다리는 화면 전환'),
                  ),
                ],
              ),

              // 4. 교체 네비게이션
              _buildSection(
                '교체 네비게이션',
                [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondScreen(
                            message: '이전 화면은 스택에서 제거됨',
                          ),
                        ),
                      );
                    },
                    child: const Text('현재 화면 교체하기'),
                  ),
                ],
              ),

              // 5. 커스텀 트랜지션
              _buildSection(
                '커스텀 트랜지션',
                [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CustomPageRoute(
                          child: const CustomTransitionScreen(),
                        ),
                      );
                    },
                    child: const Text('커스텀 트랜지션으로 열기'),
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
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
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
          const SizedBox(height: 8),
          ...children,
        ],
      ),
    );
  }
}
