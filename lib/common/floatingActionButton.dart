import 'package:flutter/material.dart';
import 'package:deadline_memo/func/showAlertDialog.dart';

FloatingActionButton floatingActionButton(context){
  return FloatingActionButton(
    onPressed: (){showAlertDialog(context);},
    child: const Icon(Icons.add),
    backgroundColor:const Color(0xFF67B5B7),
  );
}