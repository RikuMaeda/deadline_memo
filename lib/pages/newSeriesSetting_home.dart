import 'package:flutter/material.dart';
import 'package:deadline_memo/common/appBar.dart';
import 'textField_page.dart';
import 'package:deadline_memo/common/drawer.dart';

class newSeriesSetting_home extends StatefulWidget {
  const newSeriesSetting_home({super.key});

  @override
  State<newSeriesSetting_home> createState() => _newSeriesSetting_homeState();
}

class _newSeriesSetting_homeState extends State<newSeriesSetting_home> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: appBar(),
     drawer: drawer(),
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
              Container(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: '作品名を入力してください'
                  ),                
                ),
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
                  String text = _controller.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditField(title_text: text))
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