import 'package:flutter/material.dart';
import '../home.dart';
import 'cart_products.dart';



class Cart extends StatefulWidget {
  const Cart();

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
            'Cart',
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          ),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
              }),
        ],
      ),

      body: new CartProducts(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text(
                    'Total'),
                subtitle: new Text(
                  '\$230'
                ),
  //    ('Check out', style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(child: MaterialButton(
              onPressed: () {},
              child: new Text('Check out', style: TextStyle(color: Colors.white),),
              color: Colors.deepPurple[600],
            ),
            )
          ],
        ),
      ),
    );
  }
}
