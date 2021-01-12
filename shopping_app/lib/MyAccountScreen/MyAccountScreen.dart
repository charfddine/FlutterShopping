import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopping_app/MyAccountScreen/BodyMyAccount.dart';
import 'package:shopping_app/NavigationBloacks/NavigationsBlocks.dart';

class MyAccountScreen extends StatefulWidget with NavigationState {
  const MyAccountScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
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
