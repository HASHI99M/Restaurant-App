import 'package:flutter/material.dart';

import '../../../../../const.dart';
import '../../../../../size_config.dart';

class CategoryCard extends StatelessWidget {
  final double defaultSize;

  const CategoryCard({Key key, this.defaultSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultSize * 1.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: (SizeConfig.screenHeight * .18) * .8,
            width: defaultSize * 10,
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(defaultSize * .5)),
            child: Image.asset('assets/images/pizza.png'),
          ),
          Container(
              height: (SizeConfig.screenHeight * .18) * .2,
              child: Text(
            'Pizza',
            style: TextStyle(fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
