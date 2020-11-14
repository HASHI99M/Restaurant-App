import 'package:flutter/material.dart';
import '../../../const.dart';
import '../login_screen/login_screen.dart';
import 'components/body.dart';

class LoginHomeScreen extends StatelessWidget {
  static String id = 'LoginHomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
            child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.6),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
          )
        ],
      ),
      body: Body(),
    );
  }
}
