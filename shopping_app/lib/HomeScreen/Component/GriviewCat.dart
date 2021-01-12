import 'package:flutter/material.dart';
import 'package:shopping_app/HomeScreen/Models/Product.dart';
import 'package:shopping_app/constants.dart';
import 'ItemCard.dart';

class GridViewCat extends StatelessWidget {
  final List<Product> products;

  GridViewCat({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.80),
        itemBuilder: (BuildContext context, int index) => ItemCard(
          product: products[index],
        ),
      ),
    );
  }
}
