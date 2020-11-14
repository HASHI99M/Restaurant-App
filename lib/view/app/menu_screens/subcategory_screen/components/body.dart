import 'package:flutter/material.dart';
import 'package:restaurant_app/view/app/menu_screens/category/category.dart';
import 'package:restaurant_app/view/app/menu_screens/subcategory_screen/components/card_subcategory.dart';

import '../../../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => CardSubCategory(
          defaultSize: defaultSize,
          onclick: () {
            Navigator.pushNamed(context,Category.id);
          },
          subtitle: '10',
        ),
        itemCount: 12,
      ),
    );
  }
}
