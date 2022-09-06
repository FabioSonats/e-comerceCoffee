import 'package:e_comerce/componens/products.dart';
import 'package:e_comerce/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailNewPrice;
  final productDetailOldPrice;
  final productDetailPicture;

  ProductDetails(
      {this.productDetailName,
      this.productDetailNewPrice,
      this.productDetailOldPrice,
      this.productDetailPicture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepPurple,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text(
            "Yako",
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
      body: new ListView(
        children: <Widget>[
          Divider(height: 1.2, color: Colors.grey),
          new Container(
            padding: EdgeInsets.all(10),
            height: 300.0,
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.productDetailPicture),
                ),
                footer: new Container(
                  color: Colors.white38,
                  child: ListTile(
                    leading: new Text(
                      widget.productDetailName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.green),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                          "\$${widget.productDetailNewPrice}",
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        )),
                        Expanded(
                            child: new Text(
                          "${widget.productDetailOldPrice}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

//        =========== the first buttons =========

          Row(children: <Widget>[
//              ========== the size button ==========
            Expanded(
                child: MaterialButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return new AlertDialog(
                        title: new Text('Size'),
                        content: new Text('Choose the size'),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text('Close'),
                          )
                        ],
                      );
                    });
              },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(
                children: <Widget>[
                  Expanded(child: new Text('Size')),
                  Expanded(child: new Icon(Icons.arrow_drop_down)),
                ],
              ),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return new AlertDialog(
                        title: new Text('Tipo'),
                        content: new Text('Choose the tipe'),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text('Close'),
                          )
                        ],
                      );
                    });
              },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(
                children: <Widget>[
                  Expanded(child: new Text('Tipo')),
                  Expanded(child: new Icon(Icons.arrow_drop_down)),
                ],
              ),
            )),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text('Qty'),
                          content: new Text('Choose the Quantity'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text('Qty')),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            )
          ]),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.deepPurple,
                  textColor: Colors.green,
                  elevation: 0.2,
                  child: new Text("Buy now!"),
                ),
              )),
              new IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.deepPurple,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.deepPurple,
                ),
                onPressed: () {},
              )
            ],
          ),
          Divider(),
          listTile(''),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.productDetailName),
              )
              // Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              //   child: new Text('Product brand', style:  TextStyle(color: Colors.grey),),),
              // Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              //   child: new Text('Product condition', style:  TextStyle(color: Colors.grey),),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product critical',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text('Five Stars'),
              )
              // Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              //   child: new Text('Product brand', style:  TextStyle(color: Colors.grey),),),
              // Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              //   child: new Text('Product condition', style:  TextStyle(color: Colors.grey),),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              //REMENBER TO CREATE A PRODUCT BRAND
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text('Brand x'),
              )
              // Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              //   child: new Text('Product brand', style:  TextStyle(color: Colors.grey),),),
              // Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              //   child: new Text('Product condition', style:  TextStyle(color: Colors.grey),),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text('New'),
              )
              // Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              //   child: new Text('Product brand', style:  TextStyle(color: Colors.grey),),),
              // Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              //   child: new Text('Product condition', style:  TextStyle(color: Colors.grey),),)
            ],
          ),
            //SIMILAR PRODUCTS SECTION
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Similar products'),
          ),

          Container(
            height: 360.0,
              child: SimilarProducts(),
          )

        ],
      ),
    );
  }

  listTile(BuildContext) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0),
      child: ListTile(
        title: new Text('Product details'),
        subtitle: new Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the '
            'industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it '
            'to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, '
            'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing '
            'Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of '
            'Lorem Ipsum.'),
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  const SimilarProducts();

  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var productList = [
    {
      "name": "Espresso",
      "picture": 'images/espresso.jpg',
      "old_price": 5,
      "price": 3.50,
    },
    {
      "name": "Machiatto",
      "picture": 'images/machiatto.jpg',
      "old_price": 7,
      "price": 5,
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
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SimilarSingleProducts(
            prod_name: productList[index]['name'],
            prod_picture: productList[index]['picture'],
            prod_old_price: productList[index]['old_price'],
            prod_price: productList[index]['price'],
          );
        });
  }
}

class SimilarSingleProducts extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  SimilarSingleProducts({
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
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    //here we are passing the values of product to the product details
                      builder: (context) =>
                      new ProductDetails(
                        productDetailName: prod_name,
                        productDetailNewPrice: prod_price,
                        productDetailOldPrice: prod_old_price,
                        productDetailPicture: prod_picture,
                      ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  height: 50,
                  child:  ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(bottom: 3, top: 4),
                        child: Text(
                          prod_name,
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                      title: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 3),
                            child: Text(
                              "\$$prod_price",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold),
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
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),)
    );
  }
}


