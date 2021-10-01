import 'package:joran_app/FlashyTabBar.dart';
import 'package:flutter/material.dart';

List<FlashyTabBarItem> tabBarItemList = [
  FlashyTabBarItem(
    icon: Icon(Icons.search),
    title: Text('Jobs'),
  ),
  FlashyTabBarItem(
    icon: Icon(Icons.chat),
    title: Text('Chat'),
  ),
  FlashyTabBarItem(
    icon: Icon(Icons.home_rounded),
    title: Text('Home'),
  ),
  FlashyTabBarItem(
    icon: Icon(Icons.notifications),
    title: Text('Reminder'),
  ),
  FlashyTabBarItem(
    icon: Icon(Icons.supervised_user_circle_rounded),
    title: Text('Profile'),
  ),
];