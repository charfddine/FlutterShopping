import 'package:flutter/material.dart';
import '../../constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesStates createState() => _CategoriesStates();
}

class _CategoriesStates extends State<Categories> {
  List<String> categories = <String>['T-Shirt', 'Shoes', 'Dresses', 'Hand Bag'];
  static int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) =>
              buildCategory(index)),
    );
  }

  void rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  Widget buildCategory(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[index],
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? Colors.black : Colors.black26,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 4),
                height: 2,
                width: 30,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              ),
            ],
          ),
        ));
  }
}
