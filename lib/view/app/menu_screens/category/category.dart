import 'package:flutter/material.dart';
import 'package:restaurant_app/view/app/menu_screens/category/components/body.dart';

class Category extends StatelessWidget {
  static String id = 'Category';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}
