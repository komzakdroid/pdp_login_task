import 'package:flutter/material.dart';
import 'package:ui_tasks/pages/shop_ui_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ShopUIPage(),
        debugShowCheckedModeBanner: false,
        routes: {
          ShopUIPage.id: (context) => ShopUIPage(),
        });
  }
}
