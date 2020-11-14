import 'package:flutter/material.dart';

import '../../../../../size_config.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double defaultSize;
  final String nameProduct;

  DetailSliverDelegate({this.defaultSize, this.nameProduct});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double rounded = defaultSize * 5;
    double expandedHeight = defaultSize * 25;
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/food.jpg'),
          width: SizeConfig.screenWidth,
          height: expandedHeight - shrinkOffset,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: expandedHeight - rounded - shrinkOffset,
          left: 0,
          child: Container(
            width: SizeConfig.screenWidth,
            height: rounded,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultSize * 3),
                    topRight: Radius.circular(defaultSize * 3))),
          ),
        ),
        Positioned(
            top: expandedHeight - defaultSize * 10 - shrinkOffset,
            left: defaultSize * 2,
            child: Text(
              'Category Name',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )),
        Positioned(
            top: defaultSize * 3 - shrinkOffset,
            left: defaultSize * 2,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                })),
      ],
    );
  }

  @override
  double get maxExtent => defaultSize * 25;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}