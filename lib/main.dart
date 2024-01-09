import 'package:exchange_rate/di/di_setup.dart';
import 'package:flutter/material.dart';

import 'router/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
void main() async {
  diSetup();
  await init();
  runApp(const MyApp());
}

Future<void> init() async {
  await dotenv.load(); // dotenv 패키지를 사용하여 local.properties 파일을 로드합니다.
  String key = dotenv.env['giphy.api.key']!; // local.properties에서 API 키를 가져옵니다.
  String id =
      dotenv.env['giphy.api.randomId']!; // local.properties에서 randomId를 가져옵니다.

  // ApiConfig apiConfig = GetIt.instance<ApiConfig>();
  if (key.isNotEmpty && id.isNotEmpty) {
    // apiConfig.apiKey = key;
    // apiConfig.randomId = id;
    print(key);
    print(id);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
