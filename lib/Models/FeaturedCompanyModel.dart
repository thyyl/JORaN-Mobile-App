import 'package:joran_app/Models/JobModel.dart';

class FeaturedCompany {
  String companyID;
  String name;
  String location;
  String companyLogo;
  String companyBanner;
  List<Job> jobList;

  FeaturedCompany({
    required this.companyID,
    required this.name,
    required this.location,
    required this.companyLogo,
    required this.companyBanner,
    required this.jobList,
  });
}