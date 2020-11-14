import 'package:flutter/material.dart';
import 'package:restaurant_app/view/login_system/login_home_screen/login_home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../const.dart';
import '../../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double defaultSize = SizeConfig.defaultSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * .7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.fill)),
            ),
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * .3,
              padding: EdgeInsets.only(left: defaultSize * 2),
              decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.9),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 50,
                        offset: Offset(0, 3))
                  ],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delicious food',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: defaultSize,
                  ),
                  Text(
                    'The best food you can find .. In our restaurant we have many of our cuisines',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                        fontWeight: FontWeight.w500),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: defaultSize,
                  ),
                  InkWell(
                    onTap: () async {
                      SharedPreferences pre =
                          await SharedPreferences.getInstance();
                      pre.setBool('seen', true);
                      Navigator.pushReplacementNamed(
                          context, LoginHomeScreen.id);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(defaultSize*4))),
                      padding:
                          EdgeInsets.symmetric(horizontal: defaultSize*4, vertical: defaultSize),
                      child: Text('get start',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.8,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
