import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';
import 'components/body.dart';

class SubCategoryScreen extends StatelessWidget {
  static String id = 'SubCategoryScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text('Category Name'),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
            ),
            onPressed: (){}),
      ),
      body: Body(),
    );
  }
}
