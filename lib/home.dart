import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Good Morning,",
                style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
              //   Text(
              //   "Sarthak!",
              //   style: TextStyle(
              //     fontSize: 32,
              //     fontFamily: 'Quicksand',
              //     fontWeight: FontWeight.w500,
              //     color: Colors.white,
              //     decoration: TextDecoration.none,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
