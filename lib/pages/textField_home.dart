import 'package:flutter/material.dart';
import 'package:deadline_memo/common/appBar.dart';

class Editor_home extends StatefulWidget {
  final String current;
  final Function(String) onChanged;

  Editor_home(this.current, this.onChanged);

  @override
  _Editor_homeState createState() => _Editor_homeState();
}

class _Editor_homeState extends State<Editor_home> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.current);
    _controller.addListener(() {
      widget.onChanged(_controller.text);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          maxLines: 99,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
