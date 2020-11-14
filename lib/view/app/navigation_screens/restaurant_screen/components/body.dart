import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/size_config.dart';
import 'package:restaurant_app/view/app/product_screen/product_screen.dart';
import 'package:restaurant_app/view/components/custom_text_failed.dart';
import 'category_card.dart';
import 'product_card.dart';

class Body extends StatefulWidget {
  final GlobalKey<ScaffoldState> globalKey;

  const Body({Key key, this.globalKey}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              drawerHeader(widget.globalKey),
              drawerListCategory(),
              drawerBodyListProduct(),
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerHeader(GlobalKey<ScaffoldState> globalKey) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(defaultSize * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivering to',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            'Current location',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: defaultSize,
          ),
          Row(
            children: [
              IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    color: kPrimaryColor,
                  ),
                  onPressed: () {
                    globalKey.currentState.openDrawer();
                  }),
              SizedBox(
                width: defaultSize,
              ),
              Expanded(
                  child: CustomTextFailed(
                defaultSize: defaultSize,
              )),
            ],
          )
        ],
      ),
    );
  }

  Widget drawerListCategory() {
    return Container(
      padding: EdgeInsets.only(left: defaultSize * 2),
      height: SizeConfig.screenHeight * .18,
      child: ListView.builder(
        itemBuilder: (context, index) => CategoryCard(
          defaultSize: defaultSize,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  Widget drawerBodyListProduct() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      child: ListView.builder(
        itemBuilder: (context, index) => ProductCard(
          defaultSize: defaultSize,
          onClick: () {
            Navigator.pushNamed(context, ProductScreen.id);
          },
        ),
        itemCount: 6,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
