import 'package:flutter/material.dart';
import 'package:localize_sl/get_started.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:localize_sl/secrets.dart';

void main() {
  OpenAI.apiKey = openaiApiKey;
  OpenAI.showLogs = false;
  OpenAI.showResponsesLogs = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localize Sri Lanka',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2A966C),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const GetStartedPage(),
    );
  }
}

