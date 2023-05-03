import 'package:flutter/material.dart';
import 'newMemoSetting_home.dart';
import 'myapp_page.dart';

class newMemoSetting extends StatelessWidget {
  const newMemoSetting ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF67B5B7),
      ),
      home: newMemoSetting_home(),
        );
  }
}