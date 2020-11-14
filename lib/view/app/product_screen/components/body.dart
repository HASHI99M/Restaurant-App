import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/size_config.dart';
import 'package:restaurant_app/view/app/order_screen/order_screen.dart';
import 'package:restaurant_app/view/components/counter.dart';
import 'package:restaurant_app/view/components/custom_icon_card.dart';
import 'package:restaurant_app/view/components/icon_info.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                productImage(),
                productInfo(),
              ],
            ),
            Positioned(
              child: drawerButton(),
              bottom: 0,
              left: 0,
              right: 0,
            ),
            drawerMenuHeader(),
          ],
        ),
      ),
    );
  }

  Widget drawerMenuHeader() {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: defaultSize * 2, vertical: defaultSize * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconCard(
            color: kPrimaryColor,
            defaultSize: defaultSize,
            icon: Icons.arrow_back_ios_outlined,
            onclick: () {
              Navigator.pop(context);
              print('object');
            },
          ),
          CustomIconCard(
            color: kPrimaryColor,
            defaultSize: defaultSize,
            icon: Icons.shopping_bag,
            onclick: () {
              Navigator.pushNamed(context, OrderScreen.id);
            },
          )
        ],
      ),
    );
  }

  Widget productImage() {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight * .50,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/food2.png')),
          color: kPrimaryColor.withOpacity(.08),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(defaultSize * 4),
              bottomLeft: Radius.circular(defaultSize * 4))),
      child: productCounter(),
    );
  }

  Widget productCounter() {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultSize * 2),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Counter(text: '4 KG',defaultSize: defaultSize,),
      ),
    );
  }

  Widget productInfo() {
    return Container(
      margin: EdgeInsets.only(top: defaultSize * 2),
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name Product',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: defaultSize),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconInfo(
                  icon: Icons.local_fire_department_sharp,
                  text: '33 Calories',
                  color: Colors.orangeAccent,
                  textColor: Colors.grey,
                ),
                IconInfo(
                  icon: Icons.star,
                  text: '4.5 (2645 review)',
                  color: Colors.orangeAccent,
                  textColor: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: defaultSize),
              child: Text(
                'Description',
                style: TextStyle(color: Colors.grey),
              )),
        ],
      ),
    );
  }

  Widget drawerButton() {
    return Container(
      margin: EdgeInsets.all(defaultSize * .2),
      height: defaultSize * 8,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(defaultSize * 4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '\$ 56.68',
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          FlatButton.icon(
            padding: EdgeInsets.symmetric(vertical: defaultSize*1.5 , horizontal: defaultSize*3),
            onPressed: () {},
            color: Colors.white24,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultSize * 5)
            ),
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.orangeAccent,
            ),
            label: Text(
              'Add To Card',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
