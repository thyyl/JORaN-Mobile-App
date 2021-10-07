import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Models/FeaturedCompanyModel.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/FeaturedCompanyIndividual.dart';

class FeaturedCompanyList extends StatelessWidget {
  const FeaturedCompanyList({
    Key? key,
    required this.featuredCompanyList
  }) : super(key: key);

  final List<FeaturedCompany> featuredCompanyList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 45.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Featured Company",
            style: TextStyle(
                color: Color(0XFF76787A),
                fontSize: 20,
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: size.width * 0.9,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(featuredCompanyList.length, (index) {
                    return FeaturedCompanyIndividual(
                      featuredCompany: featuredCompanyList[index],
                    );
                  }),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}

