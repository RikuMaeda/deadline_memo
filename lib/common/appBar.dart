import 'package:flutter/material.dart';

AppBar appBar(){
  return AppBar(
    title: const Text(
      '締め切りのあるメモアプリ',
      style: TextStyle(fontSize: 20.0),
    ),
    centerTitle: true,
    backgroundColor: const Color(0xFF67B5B7),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
              
      },
    ),
  );
}