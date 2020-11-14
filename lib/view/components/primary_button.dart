import 'package:flutter/material.dart';
import '../../const.dart';

class PrimaryButton extends StatelessWidget {
  final Function onClick;
  final Text text;
  final double  defaultSize;

  const PrimaryButton(
      {Key key, this.onClick, this.text,this.defaultSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        onPressed: onClick,
        padding: EdgeInsets.symmetric(vertical: defaultSize),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(defaultSize * 4),
            )),
        color: kPrimaryColor,
        child: text,
      ),
    );
  }
}
