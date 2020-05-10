import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  goToAppList() async {
    Navigator.pushNamed(context, '/appList');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Good Morning,",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      "Sarthak Jha!",
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 75),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "12",
                                      style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                        fontSize: 62,
                                        color: Colors.white54,
                                        decoration: TextDecoration.none,
                                      )),
                                    ),
                                    Text(
                                      "37",
                                      style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                        fontSize: 62,
                                        color: Colors.white54,
                                        decoration: TextDecoration.none,
                                      )),
                                    ),
                                    Text(
                                      "PM",
                                      style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white38,
                                        decoration: TextDecoration.none,
                                      )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          FlatButton(
                            onPressed: goToAppList,
                            child: Icon(
                              Icons.apps,
                              color: Colors.green,
                              size: 32,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
