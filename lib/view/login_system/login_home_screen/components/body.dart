import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_app/view/components/primary_button.dart';
import 'package:restaurant_app/view/components/secondary_button.dart';
import 'package:restaurant_app/view/login_system/login_home_screen/components/pages.dart';
import 'package:restaurant_app/view/login_system/register_screen/register_screen.dart';
import '../../../../size_config.dart';
import 'item_page_view.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int indexPage = 0;
    double defaultSize = SizeConfig.defaultSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: SizeConfig.screenHeight * .6,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: pages.length,
                onPageChanged: (value) {
                  setState(() {
                    indexPage = value;
                  });
                },
                itemBuilder: (context, index) {
                  return ItemPageView(defaultSize: defaultSize,index: index,);
                },
              ),
            ),
            Container(
              height: SizeConfig.screenHeight *.4 - SizeConfig.appBarSize - SizeConfig.statusBarHeight ,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _drawCircle(),
                  ),
                  SizedBox(
                    height: defaultSize*3,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultSize*2.5),
                    child: PrimaryButton(
                      defaultSize: defaultSize,
                      text: Text('Create Account' , style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.bold),),
                      onClick: createAccount,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultSize*2.5),
                    child: SecondaryButton(
                      icon: FontAwesomeIcons.facebookF,
                      defaultSize: defaultSize,
                      onclick: (){},
                      text: Text('Register with Facebook',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8,)),
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

  List<Widget> _drawCircle() {
    List<AnimatedContainer> containers = [];
    for (int i = 0; i < pages.length; i++) {
      containers.add(AnimatedContainer(
        duration: Duration(milliseconds: 100),
        margin: EdgeInsets.symmetric(horizontal: defaultSize*.5),
        width: indexPage == i ? defaultSize*2 : defaultSize,
        height: defaultSize*.6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultSize*.5),
            color: indexPage == i ? Colors.redAccent : Colors.grey[300]),
      ));
    }
    return containers;
  }

  createAccount() {
    Navigator.pushNamed(context, RegisterScreen.id);
  }

  continueFacebook() {
    print('continueFacebook');
  }
}

