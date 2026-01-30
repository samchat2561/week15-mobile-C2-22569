import 'package:flutter/material.dart';
import 'package:flutter_week15/views/card_page.dart';
import 'package:flutter_week15/views/column_page.dart';
import 'package:flutter_week15/views/home.dart';
import 'package:flutter_week15/views/listview_menu.dart';
import 'package:flutter_week15/views/mycard.dart';
import 'package:flutter_week15/views/row_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen()
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/row': (context) => RowPage(text: "",),
        '/column': (context) => ColumnPage(),
        '/menu': (context) => ListviewMenu(),
        '/card': (context) => CardPage(),
        // '/mycard': (context) => Mycard(),
        Mycard.id:(context) => Mycard(name: 'My Card'),
      },
    );
  }
}
