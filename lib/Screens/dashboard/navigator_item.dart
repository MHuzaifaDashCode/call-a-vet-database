import 'package:call_a_vet/Screens/UserHome/user_home_screen.dart';
import 'package:call_a_vet/Screens/VetHome/vet_home_screen.dart';
import 'package:call_a_vet/Screens/favourite_screen.dart';
import 'package:flutter/material.dart';
import 'package:call_a_vet/screens/account/account_screen.dart';




class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Dashboard", "assets/icons/shop_icon.svg", 0, UserHomeScreen()),
  NavigatorItem("Vet", "assets/icons/shop_icon.svg", 1, VetHomeScreen()),
  NavigatorItem("Favourite", "assets/icons/favourite_icon.svg", 2, FavouriteScreen()),
  NavigatorItem("Account", "assets/icons/account_icon.svg", 3, AccountScreen()),
];
