
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'main.dart';

 class SecondScreen extends StatelessWidget {
   const SecondScreen({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     final toDodegerlerTipi todo = ModalRoute.of(context).settings.arguments;
     return Scaffold(
       appBar:  AppBar(
         title: Text("Second Screen",style: TextStyle(
           color: Colors.black,
         ),
         ),
         backgroundColor: Colors.white,
         centerTitle: true,
         ),
         body: Center(
           child: Text(
             "${todo.textler}",
             style: TextStyle(fontSize: 20
             ),
           ),
           ),
         
     );
   }
 }