import 'package:flutter/material.dart';
class CoffeeMenu extends StatefulWidget {
  const CoffeeMenu();

  @override
  _CoffeeMenuState createState() => _CoffeeMenuState();
}

class _CoffeeMenuState extends State<CoffeeMenu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical ,
      children: <Widget>[
        Text('Olá Mundo')
      ],
    );
  }
}

