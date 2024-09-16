import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/core/views/screen/all_todo.dart';
import 'package:to_do_list/core/views/screen/complete_todo.dart';
import 'package:to_do_list/core/views/screen/inprogress_todo.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DefaultTabController(length: 3,child: Scaffold(
    appBar: AppBar(title: Text('To Do List ',style: TextStyle(fontWeight: FontWeight.bold),),backgroundColor: Colors.purple[100],
    bottom: TabBar(tabs: [
      Text('Completed'),
      Text('In Progress'),
      Text('All'),
    ],),),
    body: TabBarView(
      children: [
      CompleteTodo(),
      InprogressTodo(),
      AllTodo(),
    ],),),)
    );
  }
}
