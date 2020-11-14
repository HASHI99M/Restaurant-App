import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';
import 'components/body.dart';

class CategoryScreen extends StatelessWidget {
  static String id = 'CategoryScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined), onPressed: (){}),
        title: Text('Menu'),
        backgroundColor: kSecondaryColor,
      ),
      body: Body(),
    );
  }
}
