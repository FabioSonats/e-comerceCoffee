import 'package:e_comerce/pages/about.dart';
import 'package:e_comerce/pages/account.dart';
import 'package:e_comerce/pages/cart.dart';
import 'package:e_comerce/pages/myOrders.dart';
import 'package:e_comerce/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:e_comerce/componens/horizontal_listview.dart';
import 'package:e_comerce/componens/products.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0, left: 25.0),
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/espresso.jpg'),
            AssetImage('images/machiatto.jpg'),
            AssetImage('images/aeropress.jpg'),
            AssetImage('images/chemix.jpg'),
          ],
          autoplay: false,
          // animationCurve: Curves.fastOutSlowIn,
          // animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.transparent,
        ),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepPurple[600],
        title: Text(
          'Yako',
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          // new IconButton(
          //     icon: Icon(
          //       Icons.shopping_cart,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//           header
            new UserAccountsDrawerHeader(
              accountName: Text('Ferreira Fábio'),
              accountEmail: Text('ferreirafabio51@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.deepPurple[600],
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Account()));
              },
              child: ListTile(
                title: Text('My account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new MyOrders()));
              },
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
              },
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
              },
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 15.0, bottom: 15.0),
            child: new Text(
              'Categories',
              style: TextStyle(
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          //Horizontal list view begins here
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.only(left: 25, top: 15, bottom: 15),
            child: new Text(
              'Recent Poducts',
              style: TextStyle(
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
