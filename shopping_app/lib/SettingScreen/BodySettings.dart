import 'package:flutter/material.dart';
import 'package:shopping_app/HomeScreen/Models/Product.dart';
// import 'package:shopping_app/DetailsScreen/DetailsScreen.dart';

// ignore: must_be_immutable
class BodySettings extends StatelessWidget {
  List<Product> products = products1;

  // ignore: sort_constructors_first
  BodySettings({Key key}) : super(key: key);
  Key refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
