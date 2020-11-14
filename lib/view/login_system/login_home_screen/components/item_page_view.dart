import 'package:flutter/material.dart';
import 'package:restaurant_app/view/login_system/login_home_screen/components/pages.dart';

import '../../../../const.dart';
import '../../../../size_config.dart';
class ItemPageView extends StatelessWidget {
  final int index;
  final double defaultSize;
  const ItemPageView({Key key, this.index, this.defaultSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(pages[index].imageURL),
            width: SizeConfig.screenWidth * .8,
            height: SizeConfig.screenHeight * .38,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: defaultSize * 1.5,
          ),
          Text(
            pages[index].title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: defaultSize,
          ),
          Text(
            pages[index].description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}