

import 'package:dio/dio.dart';
import 'package:to_do_list/core/models/todo.dart';

class TodoVm{
Future<Todo?> getListTodo() async {
 Dio dio = Dio();
 try{
Response response =  await dio.get('https://dummyjson.com/todos');
return Todo.fromJson(response.data!);
 }
     catch(e){
   print(' The Expention is $e');
     }
}
}