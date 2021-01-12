import 'package:flutter/material.dart';
import 'package:shopping_app/DetailsScreen/DetailsScreen.dart';
import 'package:shopping_app/HomeScreen/Models/Product.dart';

class ItemCard extends StatelessWidget {
  // ignore: avoid_field_initializers_in_const_classes
  final int selectedIndex = 0;
  final Product product;
  final Function press;

  // ignore: sort_constructors_first
  const ItemCard({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
            context,
            // ignore: always_specify_types
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    DetailsScreen(product: product))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Hero(
                    tag: '${product.id}',
                    child: Image.asset(
                      'images/' + product.image,
                      fit: BoxFit.fill,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(product.name),
              ),
              Text('\$' + product.price,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
