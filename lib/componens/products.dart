import 'package:e_comerce/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  Products();

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Espresso",
      "picture": 'images/espresso.jpg',
      "old_price": 5,
      "price": 3.50,
    },
    {
      "name": "Cappuccino",
      "picture": 'images/cappuccino.jpg',
      "old_price": 10,
      "price": 8,
    },
    {
      "name": "Machiatto",
      "picture": 'images/machiatto.jpg',
      "old_price": 7,
      "price": 5,
    },
    {
      "name": "Grãos",
      "picture": 'images/graos.jpg',
      "old_price": 38,
      "price": 32.5,
    },
    {
      "name": "Macarron",
      "picture": 'images/doces.jpg',
      "old_price": 10,
      "price": 8,
    },
    {
      "name": "Croissant",
      "picture": 'images/products/croissant.jpg',
      "old_price": 9,
      "price": 7.90,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProd(
            prod_name: productList[index]['name'],
            prod_picture: productList[index]['picture'],
            prod_old_price: productList[index]['old_price'],
            prod_price: productList[index]['price'],
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  SingleProd({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: prod_name,
      child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              //here we are passing the values of product to the product details
              builder: (context) => new ProductDetails(
                    productDetailName: prod_name,
                    productDetailNewPrice: prod_price,
                    productDetailOldPrice: prod_old_price,
                    productDetailPicture: prod_picture,
                  ))),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(),
              child: GridTile(
                footer: Column(
                  children: [
                    ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(bottom: 3, top: 4),
                          child: Text(
                            prod_name,
                            style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ),
                        title: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Text(
                                "\$$prod_price",
                                style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Text(
                                "\$$prod_old_price",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w800,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
