import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopping_app/MyAccountScreen/BodyMyAccount.dart';
import 'package:shopping_app/NavigationBloacks/NavigationsBlocks.dart';

class MyOrdersScreen extends StatefulWidget with NavigationState {
  const MyOrdersScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(widget.title, textAlign: TextAlign.center),
        centerTitle: true,
        elevation: 0,
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
      body: BodyMyAccount(),
    );
  }
}
