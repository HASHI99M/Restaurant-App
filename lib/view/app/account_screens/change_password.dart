import 'package:flutter/material.dart';
import 'package:restaurant_app/size_config.dart';
import 'package:restaurant_app/view/components/custom_text_failed2.dart';
import 'package:restaurant_app/view/components/primary_button.dart';

class ChangePassword extends StatelessWidget {
  static String id = 'ChangePassword';

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            ),
            onPressed: () {}),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Change Password',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: defaultSize*4,),
            CustomTextFailed(
              hintText: 'Current password',
            ),
            CustomTextFailed(
              hintText: 'new password',
            ),
            CustomTextFailed(
              hintText: 'password confirmation',
            ),
            SizedBox(height: defaultSize*2,),
            // PrimaryButton(color: Colors.white,title: 'Save' , marge: true,vertical: defaultSize*1.5,)
            PrimaryButton(text: Text('Save' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),defaultSize: defaultSize,onClick: (){},)
          ],
        ),
      ),
    );
  }
}
