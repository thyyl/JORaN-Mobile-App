import 'package:flutter/material.dart';
import 'package:joran_app/Screens/JobsModule/JobsListScreen/components/BasicJobsIndividual.dart';

class BasicJobsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        child: Column(
          children: List.generate(5, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BasicJobsIndividual(),
                  BasicJobsIndividual(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
