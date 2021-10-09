import 'package:joran_app/FlashyTabBar.dart';
import 'package:flutter/material.dart';

List<FlashyTabBarItem> tabBarItemList = [
  FlashyTabBarItem(
    icon: Icon(Icons.search),
    title: Text('Search'),
  ),
  FlashyTabBarItem(
    icon: Icon(Icons.chat),
    title: Text('Chat'),
  ),
  FlashyTabBarItem(
    icon: Icon(Icons.home_rounded),
    title: Text('Discover'),
  ),
  FlashyTabBarItem(
    icon: Icon(Icons.notifications),
    title: Text('Notice'),
  ),
  FlashyTabBarItem(
    icon: Icon(Icons.supervised_user_circle_rounded),
    title: Text('Profile'),
  ),
];

List<String> categoryList = [
  "Accounting",
  "Architecture",
  "Art",
  "Biology",
  "Engineering",
  "Chemistry",
  "Computer Science",
  "Language",
  "Maths",
  "Open",
  "Pharmaceutical",
  "Physics",
];