import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/size_config.dart';
import 'package:restaurant_app/view/app/menu_screens/category/components/sliver_delegate.dart';

import 'card_food.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
            delegate: DetailSliverDelegate(defaultSize: defaultSize)),
        SliverToBoxAdapter(
          child: Container(
            child: Column(
              children: [
                CardFood(
                  defaultSize: defaultSize,
                ),
                CardFood(
                  defaultSize: defaultSize,
                ),
                CardFood(
                  defaultSize: defaultSize,
                ),
                CardFood(
                  defaultSize: defaultSize,
                ),
                CardFood(
                  defaultSize: defaultSize,
                ),
                CardFood(
                  defaultSize: defaultSize,
                ),
                CardFood(
                  defaultSize: defaultSize,
                ),
                CardFood(
                  defaultSize: defaultSize,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}




