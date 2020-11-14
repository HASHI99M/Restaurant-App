import 'package:flutter/material.dart';
import 'package:restaurant_app/size_config.dart';
import 'package:restaurant_app/view/app/menu_screens/subcategory_screen/subcategory_screen.dart';
import 'card_item_menu.dart';

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
        itemBuilder: (context, index) => CardItemMenu(
          defaultSize: defaultSize,
          onclick: (){
            Navigator.pushNamed(context, SubCategoryScreen.id);
          },
        ),
        itemCount: 12,
      ),
    );
  }
}
