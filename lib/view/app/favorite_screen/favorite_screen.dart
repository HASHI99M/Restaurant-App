import 'package:flutter/material.dart';
import 'package:restaurant_app/view/app/favorite_screen/components/body.dart';

class FavoriteScreen extends StatelessWidget {
  static String id = 'FavoriteScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Body(),
    );
  }
}
