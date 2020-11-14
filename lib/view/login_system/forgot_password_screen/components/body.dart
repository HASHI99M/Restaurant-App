import 'package:flutter/material.dart';
import 'package:restaurant_app/view/components/custom_text_failed2.dart';
import 'package:restaurant_app/view/components/primary_button.dart';
import '../../../../const.dart';
import '../../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 3),
      child: Form(
        child: ListView(
          physics: RangeMaintainingScrollPhysics(),
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(
                  color: kPrimaryColor.withOpacity(.9),
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
            SizedBox(
              height: defaultSize,
            ),
            Text(
              'Enter your email address correctly to have your password sent',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: defaultSize,
            ),
            CustomTextFailed(
              hintText: 'Email',
            ),
            Padding(
              padding: EdgeInsets.only(top: defaultSize * 2.5),
              child: PrimaryButton(
                defaultSize: defaultSize,
                text: Text(
                  'Send',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onClick: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
