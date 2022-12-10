import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Manan";
  num pi = 3.14; // num is a data type which can be int or double
  var day = "Monday"; // var is a data type which can be anything

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome $name to $days days of flutter'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
