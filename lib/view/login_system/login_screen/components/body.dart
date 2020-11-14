import 'package:flutter/material.dart';
import 'package:restaurant_app/view/components/custom_text_failed2.dart';
import 'package:restaurant_app/view/components/primary_button.dart';
import 'package:restaurant_app/view/login_system/register_screen/register_screen.dart';
import '../../../../const.dart';
import '../../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize *3),
      child: Form(
        child: ListView(
          physics: RangeMaintainingScrollPhysics(),
          children: [
            Text(
              'Login',
              style: TextStyle(
                  color: kPrimaryColor.withOpacity(.9),
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
            SizedBox(
              height: defaultSize ,
            ),
            CustomTextFailed(
              hintText: 'UserName',
            ),
            CustomTextFailed(
              hintText: 'Password',
              isForget: true,
            ),
            SizedBox(
              height: defaultSize *2 ,
            ),
            PrimaryButton(
              defaultSize: defaultSize,
              text: Text('Sign In' , style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.bold),),
              onClick: (){},
            ),
            SizedBox(
              height: defaultSize *2 ,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ?',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: defaultSize*.3,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, RegisterScreen.id);
                    },
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: kPrimaryColor),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
