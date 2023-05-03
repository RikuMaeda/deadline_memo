import 'package:deadline_memo/pages/newMemoSetting_page.dart';
import 'package:flutter/material.dart';
import 'HomePage_home.dart';

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF67B5B7),
      ),
      home: HomePage(),
        );
  }
}