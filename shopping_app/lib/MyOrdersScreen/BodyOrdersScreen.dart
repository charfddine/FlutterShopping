import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_app/HomeScreen/Models/Product.dart';
// import 'package:shopping_app/DetailsScreen/DetailsScreen.dart';

// ignore: must_be_immutable
class BodyOrdersScreen extends StatelessWidget {
  List<Product> products = products1;

  // ignore: sort_constructors_first
  BodyOrdersScreen({Key key}) : super(key: key);
  Key refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
