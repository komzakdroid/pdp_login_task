import 'package:flutter/material.dart';
import 'package:ui_tasks/pages/taskpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: TaskPage(),
        debugShowCheckedModeBanner: false,
        routes: {
          TaskPage.id: (context) => TaskPage(),
        });
  }
}
