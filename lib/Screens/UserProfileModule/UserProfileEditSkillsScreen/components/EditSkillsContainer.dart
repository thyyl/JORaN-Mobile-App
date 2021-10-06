import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Models/SkillsModel.dart';
import 'package:joran_app/Provider/SkillsProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/DoneButton.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class EditSkillsContainer extends StatefulWidget {

  final Skills firstSkill;

  const EditSkillsContainer({Key? key, required this.firstSkill}) : super(key: key);

  @override
  _EditSkillsContainerState createState() => _EditSkillsContainerState(firstSkill);
}

class _EditSkillsContainerState extends State<EditSkillsContainer> {

  _EditSkillsContainerState(this.skills) {
    this.skillsSelection = this.skills.name;
    this._skillProficiency = this.skills.proficiency;
  }

  final Skills skills;
  late String skillsSelection;
  late double _skillProficiency;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Skills> skillsSelectionList = Provider.of<SkillsProvider>(context).skillList;

    Card buildEditSkillsDropDownField() {
      return Card(
        shadowColor: Colors.transparent,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.055,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: skillsSelection,
              onChanged: (dynamic newValue) {
                setState(() {
                  skillsSelection = newValue;
                  _skillProficiency = Provider
                      .of<SkillsProvider>(context, listen: false)
                      .getSkillIndividual(skillsSelection)
                      .proficiency;
                });
              },
              items: skillsSelectionList.map<DropdownMenuItem<String>>((Skills value) {
                return DropdownMenuItem<String>(
                  value: value.name,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      value.name,
                      style: TextStyle(
                        fontFamily: "NunitoSans",
                        fontSize: 17.5,
                        fontWeight: FontWeight.w700,
                        color: Colors.black.withOpacity(.5),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      );
    }

    ToastFuture showNotification(String content) {
      return showToast(
        content,
        context: context,
        animation: StyledToastAnimation.fade,
        reverseAnimation: StyledToastAnimation.fade,
        duration: Duration(seconds: 3),
        position: StyledToastPosition.center,
      );
    }

    return Container(
      height: size.height * 0.45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Container(
                    height: size.height * 0.005,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Edit Skills",
                  style: TextStyle(
                      fontFamily: "NunitoSans",
                      color: Color(0XFF76787A),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      decoration: TextDecoration.none
                  ),
                ),
              ),
              Divider(),
              SizedBox(height: size.height * 0.025),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                              fontFamily: "NunitoSans",
                              color: Color(0XFF76787A),
                              fontWeight: FontWeight.w600,
                              fontSize: 17.5,
                              decoration: TextDecoration.none
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (skillsSelectionList.isNotEmpty) {
                              Provider
                                  .of<SkillsProvider>(context, listen: false)
                                  .deleteSkill(skillsSelection);
                              skillsSelection = skillsSelectionList.first.name;

                              // TODO update database

                              showNotification("Successfully deleted.");
                            } else {
                              showNotification("There is nothing to delete.");
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(
                              "Delete Skill",
                              style: TextStyle(
                                  fontFamily: "NunitoSans",
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  decoration: TextDecoration.none
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    buildEditSkillsDropDownField(),
                    SizedBox(height: size.height * 0.025),
                    Text(
                      "Skills Proficiency",
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          color: Color(0XFF76787A),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.5,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ],
                ),
              ),
              SfSlider(
                min: 0.0,
                max: 100.0,
                value: _skillProficiency,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                onChanged: (dynamic value){
                  setState(() {
                    _skillProficiency = value;
                  });
                },
                activeColor: Color(0XFF87A5A6),
              ),
              SizedBox(height: size.height * 0.025),
              DoneButton(
                function: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: Colors.transparent),
      gapPadding: 10,
    );
  }

}
