import 'package:flutter/cupertino.dart';
import 'package:joran_app/Models/SkillsModel.dart';

class SkillsProvider extends ChangeNotifier {
  late List<Skills> _skillList;

  List<Skills> get skillList => _skillList;

  Skills getSkillIndividual(String name) {
    return _skillList.firstWhere(
      (element) => element.name == name
    );
  }

  void setSkillsList(List<Skills> skillList) {
    _skillList = skillList;
    notifyListeners();
  }

  void setUpdateSkill(String name, double update, int category) {
    _skillList.firstWhere(
            (element) => element.name == name
    ).proficiency = update;

    notifyListeners();
  }

  void deleteSkill(String name) {
    _skillList.removeWhere(
      (element) => element.name == name
    );

    notifyListeners();
  }

  void addNewSkill(Skills skill) {
    _skillList.add(skill);

    notifyListeners();
  }
}