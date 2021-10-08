import 'package:flutter/material.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/RequirementContainerIndividual.dart';

class JobRequirementContainer extends StatelessWidget {
  const JobRequirementContainer({
    Key? key,
    required this.jobType,
    required this.experience,
    required this.education,
  }) : super(key: key);

  final String jobType;
  final String experience;
  final String education;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Job Requirement",
          style: TextStyle(
              color: Color(0XFF76787A),
              fontFamily: "NunitoSans",
              fontSize: 20,
              fontWeight: FontWeight.w700
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RequirementContainerIndividual(
                requirement: jobType,
              ),
              RequirementContainerIndividual(
                requirement: "$experience+ years",
              ),
              RequirementContainerIndividual(
                requirement: education,
              ),
            ],
          ),
        )
      ],
    );
  }
}
