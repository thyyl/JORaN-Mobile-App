import 'package:flutter/cupertino.dart';
import 'package:joran_app/Models/JobModel.dart';

class MarketJobProvider extends ChangeNotifier {
  late List<Job> _jobList;
  late Job _individualJob;

  List<Job> get jobList => _jobList;
  Job get individualJob => _individualJob;

  Job getJobIndividual(String id) {
    return _jobList.firstWhere(
            (element) => element.jobID == id
    );
  }

  void setJobList(List<Job> jobList) {
    _jobList = jobList;
    notifyListeners();
  }
}