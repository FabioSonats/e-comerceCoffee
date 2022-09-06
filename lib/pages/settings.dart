import 'package:flutter/material.dart';

import '../home.dart';

class Settings extends StatefulWidget {
  const Settings();

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepPurple[600],
        title: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            'Settings',
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          ),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
