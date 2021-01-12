import 'package:flutter/material.dart';
import 'CarteCounter.dart';

class CounterWithFavButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        FavButton(),
      ],
    );
  }
}
