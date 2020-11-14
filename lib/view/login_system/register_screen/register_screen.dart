import 'package:flutter/material.dart';
import 'components/body.dart';

class RegisterScreen extends StatelessWidget {
  static String id = 'RegisterScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Body(),
    );
  }
}
