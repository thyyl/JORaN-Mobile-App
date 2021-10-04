import 'package:flutter/material.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/Body.dart';

class JobsOverviewScreen extends StatefulWidget {
  @override
  _JobsOverviewScreenState createState() => _JobsOverviewScreenState();
}

class _JobsOverviewScreenState extends State<JobsOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
