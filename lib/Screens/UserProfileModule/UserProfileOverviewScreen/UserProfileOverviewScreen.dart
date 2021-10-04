import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/Body.dart';

class UserProfileOverviewScreen extends StatefulWidget {
  @override
  _UserProfileOverviewScreenState createState() => _UserProfileOverviewScreenState();
}

class _UserProfileOverviewScreenState extends State<UserProfileOverviewScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

