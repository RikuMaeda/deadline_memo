import 'package:flutter/material.dart';
import 'newSeriesSetting_home.dart';
import 'myapp_page.dart';

class newSeriesSetting extends StatelessWidget {
  const newSeriesSetting ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF67B5B7),
      ),
      home: newSeriesSetting_home(),
        );
  }
}