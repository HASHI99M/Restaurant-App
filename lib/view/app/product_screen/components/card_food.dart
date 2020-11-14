import 'package:flutter/material.dart';
import 'package:restaurant_app/view/components/counter.dart';

class CardFood extends StatelessWidget {
  final double defaultSize;
  final Function onclick1, onclick2 , delete;

  const CardFood({Key key, this.defaultSize, this.onclick1, this.onclick2, this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultSize),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffdfe1e7),
                    radius: 28,
                  ),
                  SizedBox(
                    width: defaultSize * 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Name Product',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$0.05',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
              Counter(
                color: Color(0xffdfe1e7),
                textColor: Colors.black,
                defaultSize: defaultSize,
                text: '1',
                onclick1: onclick1,
                onclick2: onclick2,
              )
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: GestureDetector(
              onTap: delete,
                child: Icon(
              Icons.remove_circle,
              color: Colors.red,
            )),
          )
        ],
      ),
    );
  }
}
