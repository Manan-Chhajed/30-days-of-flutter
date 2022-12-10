import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:first_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Manan";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        // for the  status bar color done by me
        systemOverlayStyle: SystemUiOverlayStyle(
          // statusBarColor: Colors.deepPurple[500],
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light, // for text color
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome $name to $days days of flutter'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
