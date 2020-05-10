import 'package:flutter/material.dart';
import 'home.dart';
import 'appList.dart';
import 'welcome/welcomeSlide.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData(fontFamily: 'QuickSand'),
      routes: {
        '/': (context) => Welcome(),
        '/home': (context) => Home(),
        '/appList': (context) => AppList(),
      },
    );
  }
}
