import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool shouldInputAppear = false;
  var name = "";

  void displayTextInput() {
    setState(() {
      shouldInputAppear = true;
    });
  }

  void submitName(value) {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    print(name);
    return SafeArea(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  shouldInputAppear
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Card(
                            child: TextField(
                              onSubmitted: submitName,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w100,
                              ),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                fillColor: Colors.black,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                hintStyle: GoogleFonts.quicksand(
                                  color: Colors.white54,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w100,
                                ),
                                hintText: 'Enter your name',
                              ),
                            ),
                          ),
                        )
                      : SizedBox(
                          width: 250.0,
                          child: ColorizeAnimatedTextKit(
                              isRepeatingAnimation: false,
                              speed: Duration(milliseconds: 400),
                              onFinished: displayTextInput,
                              text: [
                                "Welcome!",
                                "What do I call you?",
                              ],
                              textStyle: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Quicksand",
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500),
                              colors: [
                                Colors.white,
                                Colors.white54,
                                Colors.black,
                              ],
                              textAlign: TextAlign.center,
                              alignment: AlignmentDirectional
                                  .topStart // or Alignment.topLeft
                              ),
                        )
                ]),
          ),
        ),
      ),
    );
  }
}
