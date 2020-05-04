import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';
import 'home.dart';

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
        '/': (context) => Home(),
      },
    );
  }
}
