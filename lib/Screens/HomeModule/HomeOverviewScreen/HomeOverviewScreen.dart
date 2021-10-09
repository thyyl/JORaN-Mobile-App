import 'package:flutter/material.dart';
import 'package:joran_app/Models/FeaturedCompanyModel.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/Body.dart';

class HomeOverviewScreen extends StatelessWidget {
  const HomeOverviewScreen({
    Key? key,
    required this.featuredCompanyList
  }) : super(key: key);

  final List<FeaturedCompany> featuredCompanyList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(featuredCompanyList: featuredCompanyList),
    );
  }
}
