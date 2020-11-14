import 'package:flutter/material.dart';
import 'package:restaurant_app/size_config.dart';
import 'package:restaurant_app/view/app/favorite_screen/components/card_item_product.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize*.5),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2
        ),
        itemCount: 15,
        itemBuilder: (context, index) => CardItemProduct(
          defaultSize: defaultSize,
        ),
      ),
    );
  }
}
