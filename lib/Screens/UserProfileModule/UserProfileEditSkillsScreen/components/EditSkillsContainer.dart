import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/DoneButton.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class EditSkillsContainer extends StatefulWidget {
  @override
  _EditSkillsContainerState createState() => _EditSkillsContainerState();
}

class _EditSkillsContainerState extends State<EditSkillsContainer> {

  double _skillProficiency = 10;
  final _skillController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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

  Card buildEditSkillsDropDownField() {
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
            hintText: "C++ Programming",
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

}
