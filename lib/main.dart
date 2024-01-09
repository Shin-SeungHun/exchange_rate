import 'package:exchange_rate/di/di_setup.dart';
import 'package:flutter/material.dart';
import 'router/routes.dart';
import 'package:env_flutter/env_flutter.dart';

void main() async {
  diSetup();
  await init();
  runApp(const MyApp());
}

init() async {
  await dotenv.load();

  print('''
    dbPort: ${dotenv.env['DB_PORT']}
    timeout: ${dotenv.env['TIMEOUT']}
  ''');
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
