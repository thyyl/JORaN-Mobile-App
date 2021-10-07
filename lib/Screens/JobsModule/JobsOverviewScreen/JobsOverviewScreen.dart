import 'package:flutter/material.dart';
import 'package:joran_app/Models/FeaturedCompanyModel.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/Body.dart';

class JobsOverviewScreen extends StatelessWidget {

  final List<FeaturedCompany> featuredCompanyList;

  const JobsOverviewScreen({
    Key? key,
    required this.featuredCompanyList
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(
        featuredCompanyList: featuredCompanyList
      ),
    );
  }
}

