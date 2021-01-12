import 'package:flutter/material.dart';
import 'package:shopping_app/SideBarLayout/SideBarLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shooping for women',
        color: Colors.white,
        home: SideBarLayout()
        //HomePage(title: 'Shooping for women'),
        );
  }
}
