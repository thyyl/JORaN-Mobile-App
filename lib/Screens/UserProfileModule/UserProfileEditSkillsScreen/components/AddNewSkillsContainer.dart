import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Models/SkillsModel.dart';
import 'package:joran_app/Provider/SkillsProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/DoneButton.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:uuid/uuid.dart';

class AddNewSkillsContainer extends StatefulWidget {
  @override
  _AddNewSkillsContainerState createState() => _AddNewSkillsContainerState();
}

class _AddNewSkillsContainerState extends State<AddNewSkillsContainer> {

  double _skillProficiency = 0;
  final _skillController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.8,
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
                  "Add Skill",
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
                    SizedBox(height: 5),
                    buildAddNewSkillsDropDownField(),
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
                function: () {

                  if (_skillController.text.isNotEmpty && _skillProficiency != 0) {
                    var uuid = Uuid();

                    Skills skill = Skills(
                        skillID: uuid.v1(),
                        name: _skillController.text,
                        proficiency: _skillProficiency
                    );

                    Provider.of<SkillsProvider>(context, listen: false).addNewSkill(skill);

                    // TODO update database

                    showNotification("Successfully added.");
                  } else {
                    showNotification("There is nothing to add.");
                  }


                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Card buildAddNewSkillsDropDownField() {
    return Card(
      shadowColor: Colors.transparent,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Please enter a skill",
            enabledBorder: outlineBorder(),
            focusedBorder: outlineBorder(),
            hintStyle: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight:
                FontWeight.w700,
                color: Colors.black.withOpacity(.25)
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.only(top: 20, left: 10),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          controller: _skillController,
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
}
