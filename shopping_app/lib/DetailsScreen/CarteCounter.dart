import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
            icon: const Icon(Icons.remove),
            press: () {
              if (numberOfItems > 1) {
                setState(() {
                  numberOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(numberOfItems.toString().padLeft(2, '0'),
              style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.black54, fontWeight: FontWeight.bold)),
        ),
        buildOutlineButton(
            icon: const Icon(Icons.add),
            press: () {
              setState(() {
                numberOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({Icon icon, VoidCallback press}) {
    return SizedBox(
        width: 50,
        height: 40,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          onPressed: press,
          child: icon,
        ));
  }
}

class FavButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(15.0),
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Image.asset('images/heart.png'),
    );
  }
}
