import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopping_app/DetailsScreen/BodyDetails.dart';
import 'package:shopping_app/HomeScreen/Models/Product.dart';

class DetailsScreen extends StatelessWidget {
  // This widget is the root of your application.
  final Product product;

  // ignore: sort_constructors_first
  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 40,
            onPressed: () {
              Fluttertoast.showToast(
                  msg: 'search btn tapped',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black45,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_basket_outlined),
            iconSize: 40,
            onPressed: () {
              Fluttertoast.showToast(
                  msg: 'shop btn tapped',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black45,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          )
        ],
      ),
      body: BodyDetails(product: product),
    );
  }
}
