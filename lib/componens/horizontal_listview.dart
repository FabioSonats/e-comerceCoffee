import 'package:e_comerce/componens/coffee_menu.dart';
import 'package:e_comerce/componens/products.dart';
import 'package:e_comerce/pages/menu_coffee_page.dart';
import 'package:e_comerce/pages/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class HorizontalList extends StatefulWidget {
  HorizontalList();

  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(context: context, builder: (context) => CoffeeMenu());
            },
            child: Category(
              image_location: 'images/drinks.png',
              image_caption: 'drinks',
            ),
          ),
          Category(
            image_location: 'images/cats/icon_graos.png',
            image_caption: 'graos',
          ),
          Category(
            image_location: 'images/cats/icon_acessorios.png',
            image_caption: 'acessorios',
          ),
          Category(
            image_location: 'images/cats/doces.png',
            image_caption: 'doces',
          ),
          Category(
            image_location: 'images/cats/salgados.png',
            image_caption: 'salgados',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          // Navigator.push(MaterialPageRoute(builder: (context) => ))
        },
        child: GestureDetector(
          onTap: () {
            //Navigator.pop.push()
            Get.to(MenuCoffeePage());
          },
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
