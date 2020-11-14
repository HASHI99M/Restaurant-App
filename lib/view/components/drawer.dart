import 'package:flutter/material.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/view/app/account_screens/change_password.dart';
import 'package:restaurant_app/view/app/favorite_screen/favorite_screen.dart';
import 'package:restaurant_app/view/app/menu_screens/category_screen/category_screen.dart';
import 'package:restaurant_app/view/app/tracking_screen/tracking_screen.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Hashim',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                'zmalek2018@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[200], width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg.jpg'))),
              ),
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {},
              leading: Icon(
                Icons.home,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Menu'),
              onTap: (){
                onClick(context:context,routeName:CategoryScreen.id);
              },
              leading: Icon(
                Icons.restaurant,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
            Theme(
              data: theme,
              child: ExpansionTile(
                title: Text('Account'),
                leading: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                children: [
                  ListTile(
                    title: Text('Change personal settings'),
                    onTap: () {},
                    leading: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    trailing: Icon(
                      Icons.navigate_next_sharp,
                      size: 24,
                    ),
                  ),
                  ListTile(
                    title: Text('change Password'),
                    onTap: (){
                      onClick(context:context,routeName:ChangePassword.id);
                    },
                    leading: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    trailing: Icon(
                      Icons.navigate_next_sharp,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Favorite'),
              onTap: () {
                onClick(context: context , routeName: FavoriteScreen.id);
              },
              leading: Icon(
                Icons.favorite,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Track your order'),
              onTap: () {onClick(context: context , routeName: TrackingScreen.id);
              },
              leading: Icon(
                Icons.drive_eta,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('About us'),
              onTap: () {

              },
              leading: Icon(
                Icons.info,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Support center'),
              onTap: () {

              },
              leading: Icon(
                Icons.phone,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

   onClick({BuildContext context, String routeName}) {
     Navigator.pop(context);
     Navigator.pushNamed(context, routeName);
   }

}
