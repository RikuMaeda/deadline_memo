import 'package:flutter/material.dart';
import 'package:deadline_memo/common/appBar.dart';
import 'textField_page.dart';

class newSeriesSetting_home extends StatefulWidget {
  const newSeriesSetting_home({super.key});

  @override
  State<newSeriesSetting_home> createState() => _newSeriesSetting_homeState();
}

class _newSeriesSetting_homeState extends State<newSeriesSetting_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: appBar(),
     body: Center(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('シリーズ名',
              style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('連載ペース（アラーム）',
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