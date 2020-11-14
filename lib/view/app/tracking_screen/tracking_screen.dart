import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/view/app/tracking_screen/components/body.dart';

class TrackingScreen extends StatelessWidget {
  static String id = 'TrackingScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded , color: Colors.black,), onPressed: (){
          Navigator.pop(context);
        }),
        title: Text('Track Your Order' , style: TextStyle(color: Colors.black.withOpacity(.8) , fontSize: 18),),
        centerTitle: true,
        actions: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8),
            child: Center(
              child: Row(
                children: [
                  Text('Chat' , style: TextStyle(color: kPrimaryColor , fontSize: 16),),
                  SizedBox(width: 4,),
                  Icon(Icons.messenger_outline_sharp,color: kPrimaryColor , size: 20,),
                ],
              ),
            ),
          )
        ],
      ),
      body: Body(),
    );
  }
}
