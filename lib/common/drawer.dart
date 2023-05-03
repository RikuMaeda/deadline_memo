import 'package:flutter/material.dart';

Drawer drawer(){
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Text('Menu'),
          decoration: BoxDecoration(
          color: const Color(0xFF67B5B7),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            // Home画面に遷移する。
          },
        ),
      ],
    ),
  );
}