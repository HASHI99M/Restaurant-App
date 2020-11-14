import 'package:flutter/material.dart';
import 'package:restaurant_app/view/app/account_screens/change_password.dart';
import 'package:restaurant_app/view/app/favorite_screen/favorite_screen.dart';
import 'package:restaurant_app/view/app/home_screen.dart';
import 'package:restaurant_app/view/app/menu_screens/category/category.dart';
import 'package:restaurant_app/view/app/menu_screens/category_screen/category_screen.dart';
import 'package:restaurant_app/view/app/menu_screens/subcategory_screen/subcategory_screen.dart';
import 'package:restaurant_app/view/app/navigation_screens/restaurant_screen/restaurant_screen.dart';
import 'package:restaurant_app/view/app/order_screen/order_screen.dart';
import 'package:restaurant_app/view/app/product_screen/product_screen.dart';
import 'package:restaurant_app/view/app/tracking_screen/tracking_screen.dart';
import 'package:restaurant_app/view/login_system/forgot_password_screen/forget_password_screen.dart';
import 'package:restaurant_app/view/login_system/get_start_screen/get_start.dart';
import 'package:restaurant_app/view/login_system/login_home_screen/login_home_screen.dart';
import 'package:restaurant_app/view/login_system/login_screen/login_screen.dart';
import 'package:restaurant_app/view/login_system/register_screen/register_screen.dart';
import 'package:restaurant_app/view/login_system/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.id: (context) => SplashScreen(),
  GetStart.id: (context) => GetStart(),
  LoginHomeScreen.id: (context) => LoginHomeScreen(),
  RegisterScreen.id: (context) => RegisterScreen(),
  LoginScreen.id: (context) => LoginScreen(),
  ForgetPasswordScreen.id: (context) => ForgetPasswordScreen(),
  HomeScreen.id: (context) => HomeScreen(),
  RestaurantScreen.id: (context) => RestaurantScreen(),
  ProductScreen.id: (context) => ProductScreen(),
  OrderScreen.id: (context) => OrderScreen(),
  ChangePassword.id: (context) => ChangePassword(),
  CategoryScreen.id: (context) => CategoryScreen(),
  SubCategoryScreen.id: (context) => SubCategoryScreen(),
  Category.id: (context) => Category(),
  FavoriteScreen.id: (context) => FavoriteScreen(),
  TrackingScreen.id: (context) => TrackingScreen()
};
