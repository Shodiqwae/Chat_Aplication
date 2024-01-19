import 'package:flutter/material.dart';
import 'package:my_chat_app/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:my_chat_app/pages/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: const String.fromEnvironment('https://uachcpioziubhtwwlltx.supabase.co'),
    anonKey: const String.fromEnvironment('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVhY2hjcGlveml1Ymh0d3dsbHR4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU1NDE1NDUsImV4cCI6MjAyMTExNzU0NX0.kMpr8eKJ7HOp2tmSdXXp5zJtGbn6ttmpoWHM2mWV-nE'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
