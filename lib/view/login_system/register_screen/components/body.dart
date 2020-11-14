import 'package:flutter/material.dart';
import 'package:restaurant_app/view/login_system/login_screen/components/form_register.dart';
import 'package:restaurant_app/view/login_system/login_screen/login_screen.dart';
import '../../../../const.dart';
import '../../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 3),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: SizeConfig.screenHeight * .60,
                child: FormRegister(defaultSize: defaultSize,)),
            Container(
                height: SizeConfig.screenHeight * .40 - SizeConfig.appBarSize - SizeConfig.statusBarHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'By clicking log in you agree to our terms and conditions',
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'do you have an account ?',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, LoginScreen.id);
                            },
                            child: Text(
                              'sign in',
                              style: TextStyle(color: kPrimaryColor , fontWeight: FontWeight.bold),

                            )),
                      ],
                    ),
                    Text(''),
                    Text(''),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
