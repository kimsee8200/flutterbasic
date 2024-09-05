import 'package:flutter/material.dart';
import 'package:flutterbasic/screen/insert_screen.dart';
import 'package:flutterbasic/screen/list_sccreen.dart';
import 'package:flutterbasic/screen/main_screen.dart';
import 'package:flutterbasic/screen/read_Screen.dart';
import 'package:flutterbasic/screen/update_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Board",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
          useMaterial3: true,
        ),
        initialRoute: '/main',
        routes:{
          '/main' : (context) => MainScreen(),
          '/board/list' : (context) => ListScreen(),
          '/board/read' : (context) => ReadScreen(),
          '/board/insert' : (context) => InsertScreen(),
          '/board/update' : (context) => UpdateScreen(),

        }
    );

  }

}

