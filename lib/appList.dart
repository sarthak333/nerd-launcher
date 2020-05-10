import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:launcher_assist/launcher_assist.dart';
import 'components/installedAppIcon.dart';

class AppList extends StatefulWidget {
  @override
  _AppListState createState() => _AppListState();
}

class _AppListState extends State<AppList> {
  @override
  void initState() {
    super.initState();
    getApps();
  }

  List installedApps;
  bool isListReady = false;

  getApps() async {
    var apps = await LauncherAssist.getAllApps();
    setState(() {
      installedApps = apps;
      isListReady = true;
    });
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
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Text(
                  "All Apps",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Expanded(
                  child: isListReady
                      ? GridView.count(
                          addAutomaticKeepAlives: true,
                          crossAxisCount: 4,
                          children:
                              List.generate(installedApps.length, (index) {
                            return Center(
                                child: InstalledAppIcon(
                                    packageName: installedApps[index]
                                        ["package"],
                                    appIcon: installedApps[index]["icon"],
                                    name: installedApps[index]["label"]));
                          }),
                        )
                      : Text("Loading")),
            ],
          ),
        ),
      ),
    );
  }
}
