import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLine extends StatelessWidget {
  final double defaultSize;

  const TimeLine({Key key, this.defaultSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffecebec),
        child: Column(
          children: [
            Container(
              height: defaultSize * 7,
              child: TimelineTile(
                beforeLineStyle: LineStyle(color: Color(0xffdfe4ea)),
                lineXY: .2,
                indicatorStyle: IndicatorStyle(color: Color(0xffdfe4ea)),
                alignment: TimelineAlign.manual,
                endChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Order confirmed'),
                ),
              ),
            ),
            Container(
              height: defaultSize * 7,
              child: TimelineTile(
                beforeLineStyle: LineStyle(color: Color(0xffdfe4ea)),
                lineXY: .2,
                indicatorStyle: IndicatorStyle(color: Color(0xffdfe4ea)),
                alignment: TimelineAlign.manual,
                endChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Preparing your order'),
                ),
              ),
            ),
            Container(
              height: defaultSize * 7,
              child: TimelineTile(
                beforeLineStyle: LineStyle(color: Color(0xffdfe4ea)),
                lineXY: .2,
                indicatorStyle: IndicatorStyle(color: Color(0xffdfe4ea)),
                alignment: TimelineAlign.manual,
                endChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Order is ready at the restaurant'),
                ),
              ),
            ),
            Container(
              height: defaultSize * 7,
              child: TimelineTile(
                beforeLineStyle: LineStyle(color: Color(0xffdfe4ea)),
                lineXY: .2,
                indicatorStyle: IndicatorStyle(color: kPrimaryColor),
                alignment: TimelineAlign.manual,
                endChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Rider is picking up your order' , style: TextStyle(color: kPrimaryColor),),
                ),
              ),
            ),
            Container(
              height: defaultSize * 7,
              child: TimelineTile(
                hasIndicator: false,
                beforeLineStyle: LineStyle(color: Color(0xffdfe4ea)),
                lineXY: .2,
                indicatorStyle: IndicatorStyle(color: Color(0xffdfe4ea)),
                alignment: TimelineAlign.manual,
                endChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Rider is nearby your place'),
                ),
              ),
            ),
          ],
        ));
  }
}
