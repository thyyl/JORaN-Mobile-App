import 'package:flutter/material.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/JobContainerIndividual.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/JobsDetailScreen.dart';
import 'package:page_transition/page_transition.dart';

class FeaturedJobsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: List.generate(3, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context, PageTransition(
                  type: PageTransitionType.fade, child: JobsDetailScreen()
                )
              ),
              child: JobContainerIndividual()
            ),
          );
        }),
      ),
    );
  }
}
