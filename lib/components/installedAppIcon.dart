import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:launcher_assist/launcher_assist.dart';

class InstalledAppIcon extends StatelessWidget {
  final name;
  final appIcon;
  final packageName;

  InstalledAppIcon({this.name, this.appIcon, this.packageName});

  launchApp() {
    LauncherAssist.launchApp(packageName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: launchApp,
        child: Column(
          children: <Widget>[
            Image.memory(
              appIcon,
              width: 50,
              height: 50,
              // fit: BoxFit.contain
            ),
            Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
