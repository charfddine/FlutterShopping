import 'package:flutter/material.dart';
import 'package:shopping_app/HomeScreen/Models/Product.dart';

class FooterView extends StatelessWidget {
  final Product product;

  // ignore: sort_constructors_first
  const FooterView({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: product.color),
            ),
            child: Image.asset('images/addBasket.png'),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: product.color,
              child: const Text(
                'BY NOW',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              onPressed: () {
                print('helloooo..');
              },
            ),
          ),
        ),
      ],
    );
  }
}
