import 'package:flutter/material.dart';

import '../home.dart';

class CartProducts extends StatefulWidget {
  const CartProducts();

  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      'name': 'Machiatto',
      'picture': 'images/machiatto.jpg',
      "price": 5,
      'size': 1,
      'type': 'Catuaí',
      'quantity': 1
    },
    {
      'name': 'Grãos',
      'picture': 'images/graos.jpg',
      'price': 32.5,
      'size': 0.5,
      'type': 'Cereja Descascada',
      'quantity': 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return single_cart_products(
          cart_prod_name: productsOnTheCart[index]['name'],
          cart_prod_picture: productsOnTheCart[index]['picture'],
          cart_prod_price: productsOnTheCart[index]['price'],
          cart_prod_size: productsOnTheCart[index]['size'],
          cart_prod_type: productsOnTheCart[index]['type'],
          cart_prod_qty: productsOnTheCart[index]['quantity'],
        );
      },
    );
  }
}

class single_cart_products extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_type;
  final cart_prod_qty;

  single_cart_products(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_type,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text('Size: ')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(cart_prod_size.toString()),
                    ),
                  ],
                ),
                Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                    child: new Text('Type'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                    child: new Text(cart_prod_type),
                  )
                ]),
                Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: new Text(cart_prod_size)
                ),
                new Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: new Text('Type: ')
                ),
                new Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: new Text(cart_prod_type)
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text('Size: '),
                ),
                new Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_prod_size),
                ),
                new Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                    child: new Text('Type: '),
                ),
                new Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: new Text(cart_prod_type)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
