import 'package:flutter/material.dart';
import 'components/body.dart';

class RestaurantScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> globalKey;
  static String id = 'RestaurantScreen';

  const RestaurantScreen({Key key, this.globalKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(globalKey: globalKey,),

    );
  }
}
