import 'package:flutter/material.dart';
import 'package:majalengka_angkutan/onboarding/onboarding_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      home: OnboardingPage1(),
    );
  }
}
