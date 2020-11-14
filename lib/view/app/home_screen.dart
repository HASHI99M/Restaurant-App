import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/view/components/drawer.dart';
import 'navigation_screens/restaurant_screen/restaurant_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      bottomNavigationBar: CupertinoTabBar(
        activeColor: Theme.of(context).primaryColor,
        currentIndex: pageIndex,
        border: Border.all(width: .2, color: Theme.of(context).accentColor),
        onTap: (index) {
          //للتحرك الطبيعي
          // _pageController.jumpToPage(index);
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 400),
              curve: Curves.easeOutQuint);
        },
        items: [
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                'Restaurant',
                style: TextStyle(fontSize: 12),
              ),
              icon: Icon(
                Icons.beenhere,
                size: 24,
              ),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                'Offers',
                style: TextStyle(fontSize: 12),
              ),
              icon: Icon(
                Icons.whatshot,
                size: 24,
              ),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                'Account',
                style: TextStyle(fontSize: 12),
              ),
              icon: Icon(
                Icons.person,
                size: 24,
              ),
              backgroundColor: Colors.amber),
        ],
      ),
      body: PageView(
        children: [
          RestaurantScreen(
            globalKey: globalKey,
          ),
          Container(),
          Container(),
        ],
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            this.pageIndex = index;
          });
        },
      ),
      drawer: DrawerScreen(),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
