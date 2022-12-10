import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.deepPurple[500]),
                    margin: EdgeInsets.zero,
                    accountName: Text(
                      "Tony Stark",
                      textScaleFactor: 1.5,
                    ),
                    accountEmail: Text("stark_industries@marvel.co"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/user_icon.png"),
                    ))),
            ListTile(
              leading: Icon(
                color: Colors.white,
                CupertinoIcons.home,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                color: Colors.white,
                CupertinoIcons.profile_circled,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                color: Colors.white,
                CupertinoIcons.mail,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
