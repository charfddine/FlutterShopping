import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData itemIcon;
  final String titleItem;
  final GestureTapCallback onTapPress;

  MenuItem({Key key, this.itemIcon, this.titleItem, this.onTapPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapPress,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Icon(
                  itemIcon,
                  size: 40,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  titleItem,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Container(
              color: Colors.white.withOpacity(0.3),
              width: 180,
              height: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
