import 'package:flutter/material.dart';
import 'package:flutter_week15/views/listview_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListviewMenu());
  }
}
