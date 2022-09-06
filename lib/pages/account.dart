

import 'package:e_comerce/home.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account();

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor:  Colors.deepPurple[600],
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            'Account',
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white
            ),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}
