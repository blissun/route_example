import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX 라우팅 예제 - 홈'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSection(
                  '기본 네비게이션',
                  [
                    ElevatedButton(
                      onPressed: () async {
                        // 결과값을 기다리는 네비게이션
                        final result = await Get.toNamed(
                          Routes.second,
                          arguments: {'data': '홈에서 전달한 데이터'},
                        );
                        if (result != null) {
                          Get.snackbar(
                            '결과 수신',
                            '받은 데이터: $result',
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        }
                      },
                      child: const Text('기본 화면 전환 (데이터 전달)'),
                    ),
                  ],
                ),
                _buildSection(
                  'URL 파라미터',
                  [
                    ElevatedButton(
                      onPressed: () {
                        // URL 파라미터를 포함한 네비게이션
                        Get.toNamed(
                          '/second?id=123&name=John',
                        );
                      },
                      child: const Text('URL 파라미터로 이동'),
                    ),
                  ],
                ),
                _buildSection(
                  '미들웨어',
                  [
                    ElevatedButton(
                      onPressed: () {
                        // 미들웨어가 적용된 화면으로 이동
                        Get.toNamed(Routes.middleware);
                      },
                      child: const Text('보호된 화면으로 이동'),
                    ),
                  ],
                ),
                _buildSection(
                  '바인딩',
                  [
                    ElevatedButton(
                      onPressed: () {
                        // 바인딩이 적용된 화면으로 이동
                        Get.toNamed(Routes.binding);
                      },
                      child: const Text('바인딩 화면으로 이동'),
                    ),
                  ],
                ),
                _buildSection(
                  '트랜지션',
                  [
                    ElevatedButton(
                      onPressed: () {
                        // 커스텀 트랜지션으로 이동
                        Get.toNamed(
                          Routes.second,
                          arguments: {'data': '트랜지션 테스트'},
                          parameters: {'id': '123', 'name': 'John'},
                        );
                      },
                      child: const Text('커스텀 트랜지션으로 이동'),
                    ),
                  ],
                ),
                _buildSection(
                  '404 페이지',
                  [
                    ElevatedButton(
                      onPressed: () {
                        // 존재하지 않는 라우트로 이동
                        Get.toNamed('/not-exists');
                      },
                      child: const Text('잘못된 경로로 이동'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Container(
      width: double.infinity,
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
          const SizedBox(height: 8),
          ...children,
        ],
      ),
    );
  }
}
