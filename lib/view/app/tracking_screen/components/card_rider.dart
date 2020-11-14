import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';

class CardRider extends StatelessWidget {
  final double defaultSize ;

  const CardRider({Key key, this.defaultSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(child: Image.asset('assets/images/food.jpg' , width: 70,height: 150 ,fit: BoxFit.cover,) ,borderRadius: BorderRadius.circular(8),),
      title: Text('Your Rider'),
      subtitle: Text('Hashim Masry'),
      trailing: Container(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star , color: kPrimaryColor,),
                Text('4.5' , style: TextStyle(color: kPrimaryColor),),
              ],
            ),
            SizedBox(height: 4,),
            Text('(124 ratings)' , style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}