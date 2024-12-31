# Flutter Routing Examples

이 프로젝트는 Flutter에서 사용할 수 있는 다양한 라우팅 방식을 학습하기 위한 예제 프로젝트입니다.

## 프로젝트 구조

프로젝트는 4가지 다른 라우팅 방식을 구현한 예제로 구성되어 있습니다:

1. **Navigator Only** (`lib/navigator_example`)
   - Flutter의 기본 Navigator를 사용한 라우팅 구현
   - 가장 기본적인 라우팅 방식 학습

2. **GetX Router** (`lib/getx_example`)
   - GetX 패키지를 사용한 라우팅 구현
   - 상태 관리와 라우팅을 통합적으로 관리

3. **Go Router** (`lib/go_router_example`)
   - go_router 패키지를 사용한 라우팅 구현
   - 선언적 라우팅과 URL 기반 네비게이션

4. **Auto Route** (`lib/auto_route_example`)
   - auto_route 패키지를 사용한 라우팅 구현
   - 코드 생성을 통한 타입 안전한 라우팅

## 실행 방법

각 예제는 독립적으로 실행할 수 있습니다. 원하는 예제를 실행하려면 해당 폴더의 main.dart 파일을 실행하세요:

```bash
# Navigator 예제 실행
flutter run -t lib/navigator_example/main.dart

# GetX 예제 실행
flutter run -t lib/getx_example/main.dart

# Go Router 예제 실행
flutter run -t lib/go_router_example/main.dart

```

## 의존성 패키지

각 예제에서 사용하는 주요 패키지:

- GetX: ^4.6.6
- go_router: ^12.1.1
