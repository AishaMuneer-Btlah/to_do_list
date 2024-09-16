import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/core/view_model/todo_vm.dart';

class AllTodo extends StatefulWidget {
  const AllTodo({super.key});

  @override
  State<AllTodo> createState() => _AllTodoState();
}

class _AllTodoState extends State<AllTodo> {
  TodoVm todoVm = TodoVm();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: todoVm.getListTodo(),
        builder: (ctx,snapshot) {
          if(snapshot.connectionState==ConnectionState.done){
          return  ListView.builder(
              itemCount: snapshot.data!.todos!.length,
              itemBuilder: (ctx,index){
              return Container(
                margin: EdgeInsets.all(10),
                height: 50,width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: ListTile(
                title: Text('- ${snapshot.data!.todos![index].todo!}',style: TextStyle(fontSize: 15),),

                ),
              );
          });
          }
          else
            return Center(child: CircularProgressIndicator(),);
        });
  }
}

