import 'package:flutter/material.dart';
import 'textField_home.dart';

class EditField extends StatefulWidget {
  const EditField({super.key});

  @override
  State<EditField> createState() => _EditFieldState();
}

class _EditFieldState extends State<EditField> {
  String _currentText = ''; // テキストフィールドの初期値
  void _handleTextChanged(String text) {
    setState(() {
      _currentText = text;
    });
  }  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF67B5B7),
      ),
      home: Editor_home(_currentText, _handleTextChanged)
        );      
  }
}