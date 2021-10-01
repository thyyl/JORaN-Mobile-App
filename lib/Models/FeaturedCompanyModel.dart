import 'package:joran_app/Models/JobModel.dart';

class FeaturedCompany {
  String name;
  String location;
  List<Job> jobList;

  FeaturedCompany(
      this.name,
      this.location,
      this.jobList,
  );
}