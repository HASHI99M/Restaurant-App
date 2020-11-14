import 'package:flutter/material.dart';
import '../../../../const.dart';
class ButtonE extends StatelessWidget {
  final Function onClick;
  final String title;
  final Color color;
  final double defaultSize;

  const ButtonE(
      {Key key, this.onClick, this.title = 'Text', this.color , this.defaultSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: defaultSize*1.2),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(defaultSize))),
        child: Text(title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
              letterSpacing: 1.8,
            )),
      ),
    );
  }
}