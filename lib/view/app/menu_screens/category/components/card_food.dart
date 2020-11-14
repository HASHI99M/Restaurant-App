import 'package:flutter/material.dart';

import '../../../../../const.dart';
import '../../../../../size_config.dart';
class CardFood extends StatelessWidget {
  final double defaultSize;
  final String image, productName, productRange, description;

  const CardFood(
      {Key key,
        this.defaultSize,
        this.image,
        this.productName,
        this.productRange,
        this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: defaultSize * 13,
      margin: EdgeInsets.symmetric(horizontal: defaultSize),
      child: Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: defaultSize * .5, horizontal: defaultSize),
          child: LayoutBuilder(
            builder: (context, constraints) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(defaultSize),
                  child: Image.asset(
                    'assets/images/food.jpg',
                    height: constraints.maxHeight,
                    width: constraints.maxWidth * .30,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: defaultSize,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name Product',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Description',
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey, height: 2)),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: kPrimaryColor,
                        ),
                        Text('4.9', style: TextStyle(color: kPrimaryColor)),
                      ],
                    )
                  ],
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.favorite,
                      color: kPrimaryColor,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}