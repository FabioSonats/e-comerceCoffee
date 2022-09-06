import 'package:flutter/material.dart';

import '../home.dart';

class MyOrders extends StatefulWidget {
  const MyOrders();

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepPurple[600],
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            'My Orders',
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
