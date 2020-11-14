
import 'package:flutter/cupertino.dart';

class IconInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color , textColor;

  const IconInfo({Key key, this.icon, this.text, this.color , this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon , color: color,),
        SizedBox(width: 5,),
        Text(text , style: TextStyle(color:textColor ),)
      ],
    );
  }
}