import 'package:flutter/material.dart';
import 'package:joran_app/Models/FeaturedCompanyModel.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/components/Body.dart';

class JobsCompanyOverviewScreen extends StatelessWidget {
  const JobsCompanyOverviewScreen({
    Key? key,
    required this.featuredCompany
  }) : super(key: key);

  final FeaturedCompany featuredCompany;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(
        featuredCompany: featuredCompany,
      ),
    );
  }
}
