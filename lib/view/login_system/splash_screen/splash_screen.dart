import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../size_config.dart';
import '../get_start_screen/get_start.dart';
import '../login_home_screen/login_home_screen.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: Colors.orangeAccent[400],
      body: Center(
        child: Container(
            padding: EdgeInsets.only(bottom: defaultSize),
            child: SvgPicture.asset(
              'assets/icons/ic_logo.svg',
              color: Colors.blueGrey,
              width: defaultSize*15,
              height: defaultSize*15,
            )),
      ),
    );
  }
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () async {
      SharedPreferences pre = await SharedPreferences.getInstance();
      bool isSeen = pre.getBool('seen') ?? false;
      if (isSeen)
        Navigator.pushReplacementNamed(context, LoginHomeScreen.id);
      else
        Navigator.pushReplacementNamed(context, GetStart.id);
    });
    super.initState();
  }
}
