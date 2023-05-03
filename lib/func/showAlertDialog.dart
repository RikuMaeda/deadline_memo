import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:deadline_memo/pages/newMemoSetting_page.dart';
import 'package:deadline_memo/pages/newSeriesSetting_page.dart';

  Future showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Column(
          children: [
            AlertDialog(
              title: Column(
                children: [
                  Center(child: Text('作品の作成')),
                ],
              ),
              content: Column(
                children: [
                  Center(child: Text('今回の作品は')),
                ],
              ),
              actions:
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('新規'),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newMemoSetting())
                        );
                      },
                      style: ElevatedButton.styleFrom(primary: Color(0xFF67B5B7))
                    ),
                    SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text('シリーズ続編'),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newSeriesSetting())
                        );
                      },
                      style: ElevatedButton.styleFrom(primary: Color(0xFF67B5B7))
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      });
      }
