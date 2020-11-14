import 'package:flutter/material.dart';
import 'package:restaurant_app/view/login_system/forgot_password_screen/forget_password_screen.dart';
import '../../const.dart';


class CustomTextFailed extends StatelessWidget {
  final String hintText;
  final Function saved;
  final bool isForget;

  const CustomTextFailed(
      {Key key, this.hintText, this.saved, this.isForget = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Colors.white),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                onSaved: saved,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    border: InputBorder.none,
                    hintText: hintText),
              ),
            ),
            isForget
                ? InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, ForgetPasswordScreen.id);
                    },
                    child: Container(
                        padding: EdgeInsets.only(right: 12),
                        child: Text(
                          'Forgot ?',
                          style: TextStyle(
                              color: kPrimaryColor.withOpacity(.9),
                              fontSize: 16),
                        )))
                : Text(''),

          ],
        ));
  }
}
