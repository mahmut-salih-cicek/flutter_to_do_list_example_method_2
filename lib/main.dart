import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_to_do_list_example/toDoScreen.dart';

class toDodegerlerTipi{
  String title;
  String textler;
  toDodegerlerTipi(String title , String textler){
     this.textler = textler;
     this.title = title;
  } 
}


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodosScreen(
      todos: List.generate(
        20,
        (i) => toDodegerlerTipi(
          'Todo $i',
          'Select item $i',
        ),
      ),
    ),
  ));
}