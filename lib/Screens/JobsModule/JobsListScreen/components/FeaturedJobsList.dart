import 'package:flutter/material.dart';
import 'package:joran_app/Models/JobModel.dart';
import 'package:joran_app/Provider/MarketJobProvider.dart';
import 'package:joran_app/Screens/JobsModule/JobsListScreen/components/FeaturedJobsIndividual.dart';
import 'package:provider/provider.dart';

class FeaturedJobsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Job> jobList = Provider.of<MarketJobProvider>(context).jobList;

    return Column(
      children: List.generate(jobList.length, (index) =>
         FeaturedJobsIndividual(
           job: jobList[index],
        )
      ),
    );
  }
}
