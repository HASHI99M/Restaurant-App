import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/size_config.dart';
import 'package:restaurant_app/view/app/product_screen/components/card_food.dart';
import 'package:restaurant_app/view/components/primary_button.dart';
import 'button_e.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => CardFood(
              defaultSize: defaultSize,
            ),
            itemCount: 5,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultSize),
          child: ButtonE(
            defaultSize: defaultSize,
            title: 'Add To Cart',
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: defaultSize * .5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultSize),
          child: ButtonE(
            color: Colors.white,
            defaultSize: defaultSize,
            title: 'Add !',
            onClick: () {
              showSheetMessage(context: context, defaultSize: defaultSize);
            },
          ),
        ),
        SizedBox(
          height: defaultSize * .5,
        ),
      ],
    );
  }

  void showSheetMessage({BuildContext context, double defaultSize}) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: BorderDirectional(bottom: BorderSide(
                      color: Colors.orangeAccent,width: 6
                    ) , top:  BorderSide(
                        color: Colors.orangeAccent,width: 6
                    ) , end:  BorderSide(
                        color: Colors.orangeAccent,width: 6
                    ) , start: BorderSide(
                        color: Colors.orangeAccent,width: 6
                    ))
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/icons/ic_done.png',
                    height: defaultSize * 10,
                  ),
                ),
                SizedBox(height: defaultSize*2,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: defaultSize*12),
                  child: Text(
                    'Thank You for your order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: defaultSize*2,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: defaultSize*8),
                  child: Text(
                    'You can track the delivery in the "Orders" section',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: defaultSize*4,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: defaultSize*4),
                  child: PrimaryButton(
                    text: Text(
                      'Track my order',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.6),
                    ),
                    defaultSize: defaultSize,
                    onClick: () {},
                  ),
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Order something else',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.2),
                    ))
              ],
            ),
          );
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))));
  }
}
