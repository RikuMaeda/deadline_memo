import 'package:flutter/material.dart';
import 'myapp_page.dart';
import '../func/showAlertDialog.dart';
import '../common/appBar.dart';
import '../common/floatingActionButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('執筆中の作品',
              style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('完成済みの作品',
              style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold),
              ),
              ],
          ),
        ),
      ),
      floatingActionButton:floatingActionButton(context)
    );
  }
}