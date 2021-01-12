import 'package:flutter/material.dart';
import 'package:shopping_app/DetailsScreen/CounterWithFavButton.dart';
import 'package:shopping_app/HomeScreen/Models/Product.dart';
import 'package:shopping_app/constants.dart';
import 'ColorDot.dart';
import 'FooterView.dart';

class BodyDetails extends StatelessWidget {
  final Product product;
  // ignore: sort_constructors_first
  const BodyDetails({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Aristocratic Hand Bag',
                          style: TextStyle(color: Colors.white)),
                      Text(product.name,
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              const TextSpan(text: 'Price\n'),
                              TextSpan(
                                  text: '\$${product.price}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                            ]),
                          ),
                          const SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            child: Hero(
                                tag: '${product.id}',
                                child: Image.asset('images/' + product.image)),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text('Color'),
                                Row(
                                  children: <ColorDot>[
                                    ColorDot(
                                      color: Colors.redAccent,
                                    ),
                                    ColorDot(color: Colors.purple),
                                    ColorDot(color: Colors.brown),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(children: <TextSpan>[
                                const TextSpan(
                                    text: 'Size\n',
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: product.size + ' cm',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .copyWith(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold)),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: defaultPadding),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: defaultPadding, bottom: defaultPadding),
                        child: Text(
                          'skdjnfksdjfnc zeknfzekjnfz zkajdnzekjfnze kzenfkzef\n lkzenfzkefn skdjnfksdjfnc zeknfzekjnfz zkajdnzekjfnze kzenfkzef lkzenfzkefn ',
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      const SizedBox(height: defaultPadding),
                      CounterWithFavButton(),
                      const SizedBox(height: 2 * defaultPadding),
                      FooterView(
                        product: product,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
