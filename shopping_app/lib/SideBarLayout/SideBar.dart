import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shopping_app/HomeScreen/HomePage.dart';
import 'package:shopping_app/MyAccountScreen/MyAccountScreen.dart';
import 'package:shopping_app/NavigationBloacks/NavigationsBlocks.dart';
import 'package:shopping_app/SettingScreen/SettingsScreen.dart';
import 'package:shopping_app/SideBarLayout/MenuItem.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  final bool isSelectionned = false;
  final Duration animationTime = const Duration(milliseconds: 700);
  StreamController<bool> isSideBarControllerOpened;
  Stream<bool> isSideBarOpened;
  StreamSink<bool> isSideBarOpenedSink;

  AnimationController animationC;

  @override
  void initState() {
    animationC = AnimationController(vsync: this, duration: animationTime);
    isSideBarControllerOpened = PublishSubject<bool>();
    isSideBarOpened = isSideBarControllerOpened.stream;
    isSideBarOpenedSink = isSideBarControllerOpened.sink;
    super.initState();
  }

  @override
  void dispose() {
    animationC.dispose();
    isSideBarControllerOpened.close();
    isSideBarOpenedSink.close();
    super.dispose();
  }

  void onTapIcon() {
    final AnimationStatus animationStatus = animationC.status;
    final bool isAnimationComplete =
        animationStatus == AnimationStatus.completed;

    if (isAnimationComplete) {
      isSideBarOpenedSink.add(false);
      animationC.reverse();
    } else {
      isSideBarOpenedSink.add(true);
      animationC.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return StreamBuilder<bool>(
        initialData: false,
        stream: isSideBarOpened,
        builder:
            (BuildContext context, AsyncSnapshot<bool> isSidebarOpenedAsyn) {
          return AnimatedPositioned(
            duration: animationTime,
            top: 0,
            bottom: 0,
            left: isSidebarOpenedAsyn.data ? 0 : -screenWidth,
            right: isSidebarOpenedAsyn.data ? 0 : screenWidth - 45,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.blue, Colors.red]),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            const SizedBox(
                              height: 100,
                            ),
                            // Row(
                            //   children: <Widget>[
                            //Image.asset('images/th4.png'),
                            const ListTile(
                              title: Text(
                                'Ilahi Charfeddine',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              subtitle: Text(
                                'ilahi.charfeddine@gmail.com',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Icon(
                                  Icons.perm_identity,
                                  color: Colors.white,
                                ),
                                radius: 40,
                              ),
                            ),
                            Divider(
                              height: 64,
                              color: Colors.white.withOpacity(0.3),
                              thickness: 0.5,
                              indent: 32,
                              endIndent: 32,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                MenuItem(
                                  itemIcon: Icons.home,
                                  titleItem: 'Home',
                                  onTapPress: () {
                                    onTapIcon();
                                    BlocProvider.of<NavigationsBlocks>(context)
                                        .add(NavigationEvents.HomeClickEvent);
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MenuItem(
                                    itemIcon: Icons.person,
                                    titleItem: 'My Account',
                                    onTapPress: () {
                                      onTapIcon();
                                      BlocProvider.of<NavigationsBlocks>(
                                              context)
                                          .add(NavigationEvents
                                              .MyAccountClickEvent);
                                    }),
                                const SizedBox(
                                  height: 20,
                                ),
                                MenuItem(
                                    itemIcon: Icons.shopping_basket,
                                    titleItem: 'My orders',
                                    onTapPress: () {
                                      onTapIcon();
                                      BlocProvider.of<NavigationsBlocks>(
                                              context)
                                          .add(NavigationEvents
                                              .MyOrdersClickEvent);
                                    }),
                                const SizedBox(
                                  height: 20,
                                ),
                                MenuItem(
                                    itemIcon: Icons.card_giftcard,
                                    titleItem: 'My wishlist',
                                    onTapPress: () {
                                      onTapIcon();
                                      BlocProvider.of<NavigationsBlocks>(
                                              context)
                                          .add(NavigationEvents
                                              .MyFavoritesClickEvent);
                                    }),
                                const SizedBox(
                                  height: 20,
                                ),
                                MenuItem(
                                    itemIcon: Icons.settings,
                                    titleItem: 'Settings',
                                    onTapPress: () {
                                      onTapIcon();
                                      BlocProvider.of<NavigationsBlocks>(
                                              context)
                                          .add(NavigationEvents
                                              .SettingsClickEvent);
                                    }),
                                const SizedBox(
                                  height: 20,
                                ),
                                MenuItem(
                                    itemIcon: Icons.exit_to_app,
                                    titleItem: 'Logout',
                                    onTapPress: () {
                                      onTapIcon();
                                      BlocProvider.of<NavigationsBlocks>(
                                              context)
                                          .add(NavigationEvents
                                              .LogoutClickEvent);
                                    }),
                                const SizedBox(
                                  height: 80,
                                ),
                                const Text('Contact us.',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'images/facebook.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'images/instagram.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'images/snapchat.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'images/linkedin.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                      //   ],
                      // ),
                      ),
                ),
                Align(
                    alignment: const Alignment(0, -0.9),
                    child: GestureDetector(
                      onTap: () {
                        onTapIcon();
                      },
                      child: ClipPath(
                        //clipper: customClipper(),
                        child: Container(
                            // color: Colors.pink,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            width: 35,
                            height: 55,
                            child: Center(
                                child: AnimatedIcon(
                              progress: animationC.view,
                              size: 35,
                              icon: AnimatedIcons.menu_close,
                              color: Colors.white,
                            ))),
                      ),
                    ))
              ],
            ),
          );
        });
  }
}

class customClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;
    final double width = size.width;
    final double height = size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
