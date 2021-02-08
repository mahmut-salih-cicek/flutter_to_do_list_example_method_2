import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_to_do_list_example/main.dart';
import 'package:flutter_to_do_list_example/secondScreen.dart';

class TodosScreen extends StatelessWidget {
  final List<toDodegerlerTipi> todos; 
  TodosScreen({Key key, @required this.todos}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
     body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
            title: Text(todos[index].title),
           
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                
                  settings: RouteSettings(
                    arguments: todos[index],
                  ),
                ),
              );
            },
            ),
          );
        },
      ),
    );
  }
}