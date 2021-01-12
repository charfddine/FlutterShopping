import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_app/HomeScreen/Models/Product.dart';
import 'package:shopping_app/constants.dart';
import 'Categories.dart';
import 'GriviewCat.dart';
// import 'package:shopping_app/DetailsScreen/DetailsScreen.dart';

// ignore: must_be_immutable
class BodyHome extends StatelessWidget {
  List<Product> products = products1;

  // ignore: sort_constructors_first
  BodyHome({Key key}) : super(key: key);
  Key refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text('Women',
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        Padding(padding: const EdgeInsets.all(10), child: Categories()),
        Expanded(
          child: GridViewCat(
            products: products,
          ),
        )
      ],
    );
  }
}
