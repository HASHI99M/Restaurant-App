import 'package:flutter/material.dart';

import 'custom_icon_card.dart';

class Counter extends StatelessWidget {
  final double defaultSize;
  final Color color;
  final Color textColor;
  final String text;
  final Function onclick1, onclick2;

  const Counter(
      {Key key,
      this.defaultSize,
      this.color = Colors.orangeAccent,
      this.textColor = Colors.white,
      this.text,
      this.onclick1,
      this.onclick2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconCard(
          defaultSize: defaultSize,
          icon: Icons.remove,
          size: 18,
          bgColor: color,
          color: textColor,
          onclick: onclick1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
          child: Text(text),
        ),
        CustomIconCard(
          defaultSize: defaultSize,
          icon: Icons.add,
          size: 18,
          bgColor: color,
          color: textColor,
          onclick: onclick2,
        ),
      ],
    );
  }
}
