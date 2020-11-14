import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SecondaryButton extends StatelessWidget {
  final Function onclick;
  final double defaultSize ;
  final Text text;
  final IconData icon;
  const SecondaryButton({Key key, this.onclick, this.defaultSize, this.text, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton.icon(onPressed: onclick , label: text,icon:Icon(icon , size: 18,),padding: EdgeInsets.symmetric(vertical: defaultSize),shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultSize*4))
      ),color: Colors.grey[200],),
    );
  }
}


