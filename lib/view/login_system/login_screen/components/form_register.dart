import 'package:flutter/material.dart';
import 'package:restaurant_app/view/app/home_screen.dart';

import 'package:restaurant_app/view/components/custom_text_failed2.dart';
import 'package:restaurant_app/view/components/primary_button.dart';

import '../../../../const.dart';

class FormRegister extends StatelessWidget {
  final double defaultSize;

  const FormRegister({Key key, this.defaultSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Text(
            'Create Account',
            style: TextStyle(
                color: kPrimaryColor.withOpacity(.9),
                fontWeight: FontWeight.w700,
                fontSize: 22),
          ),
          SizedBox(
            height: defaultSize*2,
          ),
          CustomTextFailed(
            hintText: 'UserName',
          ),
          CustomTextFailed(
            hintText: 'Email',
          ),
          CustomTextFailed(
            hintText: 'Password',
          ),
          CustomTextFailed(
            hintText: 'Phone',
          ),
          Padding(
            padding: EdgeInsets.only(top: defaultSize*2),
            child: PrimaryButton(
              defaultSize: defaultSize,
              text: Text('Create Account' , style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.bold),),
              onClick: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}
