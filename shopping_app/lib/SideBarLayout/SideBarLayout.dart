import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/SideBarLayout/SideBar.dart';
import 'package:shopping_app/NavigationBloacks/NavigationsBlocks.dart';

class SideBarLayout extends StatelessWidget {
  const SideBarLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationsBlocks>(
        create: (BuildContext context) => NavigationsBlocks(),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationsBlocks, NavigationState>(builder:
                (BuildContext context, NavigationState navigationstate) {
              return navigationstate as Widget;
            }),
            SideBar(),
          ],
        ),
      ),
    );
  }
}
