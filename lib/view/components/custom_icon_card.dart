import 'package:flutter/material.dart';
class CustomIconCard extends StatelessWidget {
  final double defaultSize;
  final IconData icon;
  final Function onclick;
  final Color color;
  final double size;
  final Color bgColor;
  const CustomIconCard({Key key, this.defaultSize, this.icon , this.color ,this.size = 24,this.bgColor = Colors.white,this.onclick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        padding: EdgeInsets.all(defaultSize * .7),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black12 , offset: Offset(1, 1) , blurRadius: 16)
          ],
            color: bgColor,
            borderRadius: BorderRadius.circular(defaultSize)),
        child: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}