import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditScreen/components/TextFieldLabel.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {

  final _nameController = TextEditingController();
  final _contactController = TextEditingController();
  final _specialisationController = TextEditingController();
  final _bankController = TextEditingController();
  final _bankAccountController = TextEditingController();
  final _descriptionController = TextEditingController();

  bool obscure = true;
  String educationSelection = "Bachelor";
  List<String> educationSelectionList = [
    "SPM / O-Level", "STPM / A-Level / Diploma", "Bachelor", "Master", "PhD",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldLabel(text: "Name"),
          buildNameTextField(),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Contact"),
          buildContactTextField(),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Education Level"),
          buildEducationFormField(),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Specialisation"),
          buildSpecialisationTextField(),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Bank"),
          buildBankTextField(),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Bank Account"),
          buildBankAccountTextField(),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Description"),
          buildDescriptionTextField(),
          SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }

  Padding buildBankAccountTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.055,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Please enter a bank account",
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
            contentPadding: EdgeInsets.only(top: 20, left: 20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          controller: _bankAccountController,
        ),
      ),
    );
  }

  Padding buildBankTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Please enter a bank",
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
            contentPadding: EdgeInsets.only(top: 20, left: 20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          controller: _bankController,
        ),
      ),
    );
  }

  Padding buildDescriptionTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.165,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          maxLines: 3,
          decoration: InputDecoration(
            hintText: "Please enter a description",
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
            contentPadding: EdgeInsets.only(top: 20, left: 20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          controller: _descriptionController,
        ),
      ),
    );
  }

  Padding buildSpecialisationTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Please enter a specialisation",
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
            contentPadding: EdgeInsets.only(top: 20, left: 20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          controller: _specialisationController,
        ),
      ),
    );
  }

  Padding buildEducationFormField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: educationSelection,
            onChanged: (dynamic newValue) {
              setState(() {
                educationSelection = newValue;
              });
            },
            items: educationSelectionList.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    value,
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

  Padding buildContactTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Please enter a contact",
            enabledBorder: outlineBorder(),
            focusedBorder: outlineBorder(),
            hintStyle: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(.25)
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.only(top: 20, left: 20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          controller: _contactController,
        ),
      ),
    );
  }


  Padding buildNameTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Please enter a name",
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
            contentPadding: EdgeInsets.only(top: 20, left: 20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          controller: _nameController,
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


