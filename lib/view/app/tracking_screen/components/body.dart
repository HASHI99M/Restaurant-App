import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/size_config.dart';
import 'package:restaurant_app/view/app/tracking_screen/components/card_rider.dart';
import 'package:restaurant_app/view/app/tracking_screen/components/time_line.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            drawerHeader(),
            SizedBox(height: defaultSize,),
            Divider(),
            CardRider(defaultSize: defaultSize,),
            SizedBox(height: defaultSize,),
            TimeLine(defaultSize: defaultSize,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: defaultSize*2.5),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: (){},
                  padding: EdgeInsets.symmetric(vertical: defaultSize),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(defaultSize * 4),
                      )),
                  color: Colors.grey[200],
                  child: Text('Cancel your order'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget drawerHeader(){
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            'Estimate Delivery Time',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 4,),
          Text(
            '05:30 PM',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}






