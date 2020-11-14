import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';

class CardItemProduct extends StatelessWidget {
  final double defaultSize;

  const CardItemProduct({Key key, this.defaultSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: EdgeInsets.all(defaultSize * .6),
          width: defaultSize * 20,
          child: AspectRatio(
            aspectRatio: .8,
            child: LayoutBuilder(
              builder: (context, constraints) => Column(
                children: [
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * .70,
                    child: Stack(
                      children: [
                        Image(
                          image: AssetImage('assets/images/pizza.png'),
                          width: constraints.maxWidth,
                          height: constraints.maxHeight * .70,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: Icon(

                                  Icons.favorite_border,
                                  color: kPrimaryColor.withOpacity(.6),

                              ))
                      ],
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * .30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name Product' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black87),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text('\$14'),
                            Row(
                              children: [
                                Icon(Icons.star_border , color: kPrimaryColor.withOpacity(.2) , size: 22,),
                                Text('4.5' , style: TextStyle(color: Colors.grey),),

                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

