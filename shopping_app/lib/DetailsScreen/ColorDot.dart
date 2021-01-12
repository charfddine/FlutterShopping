import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

// ignore: must_be_immutable
class ColorDot extends StatefulWidget {
  final Color color;
  Color selectedColor;
  // ignore: sort_constructors_first
  ColorDot({Key key, this.color, this.selectedColor}) : super(key: key);

  @override
  _StateColorDot createState() => _StateColorDot(color, selectedColor);
}

class _StateColorDot extends State<ColorDot> {
  final Color color;
  Color selectedColor;

  // ignore: sort_constructors_first
  _StateColorDot(this.color, this.selectedColor);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => setState(() {
              selectedColor = color;
            }),
        child: Container(
          margin: const EdgeInsets.only(
              top: defaultPadding / 2, right: defaultPadding / 4),
          padding: const EdgeInsets.all(2.5),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: selectedColor == color ? color : Colors.transparent,
              )),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ));
  }
}
