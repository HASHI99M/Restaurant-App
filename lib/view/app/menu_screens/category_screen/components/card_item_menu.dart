import 'package:flutter/material.dart';
class CardItemMenu extends StatelessWidget {
  final double defaultSize;
  final String image;
  final String name;
  final Function onclick;
  const CardItemMenu({Key key, this.defaultSize, this.image, this.name = 'cat', this.onclick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: defaultSize ),
      child: ListTile(
        onTap: onclick,
        leading: CircleAvatar(
          backgroundColor: Colors.orangeAccent,
          //backgroundImage: NetworkImage(image),
          radius: 35,
        ),
        title: Text(name),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}