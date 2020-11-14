import 'package:flutter/material.dart';
class CustomTextFailed extends StatelessWidget {
  final double defaultSize;

  const CustomTextFailed({Key key, this.defaultSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(defaultSize * 2)
      ),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search , size: 26,),
            hintText: 'Search Foods',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none
        ),
      ),
    );
  }
}