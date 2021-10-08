import 'package:flutter/material.dart';
import 'package:joran_app/Models/JobModel.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/Body.dart';

class JobsDetailScreen extends StatelessWidget {
  final Job job;

  const JobsDetailScreen({
    Key? key,
    required this.job
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(
          job: job
      ),
    );
  }
}
