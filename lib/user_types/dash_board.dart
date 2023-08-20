import 'dart:convert';

import 'package:dart_flex/constants/todo_url.dart';
import 'package:dart_flex/models/user_id.dart';
import 'package:dart_flex/models/user_with_id.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class DashBoardPage extends StatefulWidget {
  static const String nameRoute = '/dash-board';
  // ignore: prefer_typing_uninitialized_variables
  final token;
  const DashBoardPage({super.key, required this.token});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  late String? userId;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  // ignore: unused_field
  bool _isNotValidate = false;
  late SharedPreferences preferences;
  List? items;

  @override
  void initState() {
    Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);
    userId = jwtDecodedToken['_id'];
    // initSharedPref();
    getTodoList(userId);
    super.initState();
  }

  // void initSharedPref() async {
  //   preferences = await SharedPreferences.getInstance();
  // }

  void addTodo(BuildContext context) async {
    if (_titleController.text.isNotEmpty && _descController.text.isNotEmpty) {
      UserWithIdModel users = UserWithIdModel(
          userId: userId!,
          title: _titleController.text.toString(),
          desc: _descController.text.toString());
      var response = await http.post(Uri.parse(todoList),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(users.toMap()));
      var jsonRespose = jsonDecode(response.body);

      if (jsonRespose['status']) {
        _titleController.clear();
        _descController.clear();
        // ignore: use_build_context_synchronously
        Navigator.pop(context);
        getTodoList(userId);
      } else {}
    } else {
      setState(() {
        _isNotValidate = true;
      });
    }
  }

  void getTodoList(usersId) async {
    UserId? userId = UserId(userId: usersId!);
    var response = await http.get(Uri.parse(getTodoList as String),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(userId.toMap()));
    var jsonResponse = jsonDecode(response.body);
    items = jsonResponse['success'];
    setState(() {});
  }

  void itemsDeletion(id) async {
    // UserId? userId = UserId(userId: id);
    // var response = await http.post(Uri.parse(''),
    //     headers: {"Content-Type": "application/json"},
    //     body: jsonEncode(userId.toMap()));
    // var jsonResponse = jsonDecode(response.body);
    // if (jsonResponse['status']) {
    //   getTodoList(userId as String?);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 60.h, left: 30.w, right: 30.w, bottom: 30.h),
              child: Column(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.r,
                      child: Icon(Icons.list, size: 30.sp)),
                  SizedBox(height: 10.h),
                  Text('ToDo with NodeJS + Mongodb',
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.h),
                  Text('5 Task', style: TextStyle(fontSize: 20.sp)),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: items == null
                    ? null
                    : ListView.builder(
                        itemCount: items!.length,
                        itemBuilder: (context, index) {
                          return Slidable(
                              key: const ValueKey(0),
                              endActionPane: ActionPane(
                                  motion: const ScrollMotion(),
                                  dismissible:
                                      DismissiblePane(onDismissed: () {}),
                                  children: [
                                    SlidableAction(
                                      backgroundColor: Colors.red.shade400,
                                      foregroundColor: Colors.white,
                                      icon: Icons.delete,
                                      label: 'Delete',
                                      onPressed: (context) {
                                        itemsDeletion(
                                            '${items![index]['_id']}');
                                      },
                                    )
                                  ]),
                              child: Card(
                                borderOnForeground: false,
                                child: ListTile(
                                  leading: const Icon(Icons.task),
                                  title: Text('${items![index]['title']}'),
                                  subtitle: Text('${items![index]['title']}'),
                                  trailing: const Icon(Icons.arrow_back),
                                ),
                              ));
                        },
                      ),
              ),
            )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _displayTextInputDialog(context),
          tooltip: 'Add-Todo',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add-To-Do'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _titleController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)))),
              ),
              TextField(
                controller: _descController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)))),
              ),
              ElevatedButton(
                  onPressed: () {
                    addTodo(context);
                  },
                  child: const Text("Add")),
            ],
          ),
        );
      },
    );
  }
}
