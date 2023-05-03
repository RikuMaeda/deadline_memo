import 'package:flutter/material.dart';
import 'HomePage_home.dart';
import 'myapp_page.dart';
import 'package:deadline_memo/common/appBar.dart';
import 'textField_page.dart';

class newMemoSetting_home extends StatefulWidget {
  const newMemoSetting_home({super.key});

  @override
  State<newMemoSetting_home> createState() => _newMemoSetting_homeState();
}

class _newMemoSetting_homeState extends State<newMemoSetting_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: appBar(),
     body: Center(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('作品名',
              style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('短編か新シリーズか',
              style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: const Text('作成'),
                style: ElevatedButton.styleFrom(
                primary: const Color(0xFF67B5B7),
                onPrimary: Colors.white,
                shape: const StadiumBorder(),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditField())
                  );                      
                },
                ),
              ],
          ),
        ),
     ),
    );
  }
}