import 'package:flutter/material.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditScreen/components/TextFieldLabel.dart';
import 'package:provider/provider.dart';

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({
    Key? key,
    required this.educationSelection,
  }) : super(key: key);

  final String educationSelection;

  @override
  EditProfileFormState createState() => EditProfileFormState(educationSelection);
}

class EditProfileFormState extends State<EditProfileForm> {

  EditProfileFormState(this.education) {
    this.educationSelection = this.education;
  }

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final contactController = TextEditingController();
  final specialisationController = TextEditingController();
  final descriptionController = TextEditingController();

  bool obscure = true;
  final education;
  late String educationSelection;
  List<String> educationSelectionList = [
    "SPM / O-Level", "STPM / A-Level / Diploma", "Bachelor Degree", "Master", "PhD",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    User user = Provider.of<UserProvider>(context).user;

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldLabel(text: "Name"),
          buildNameTextField(user.name),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Email"),
          buildEmailTextField(user.email),
          SizedBox(height: size.height * 0.02),

          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFieldLabel(text: "Password"),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Change Password",
                    style: TextStyle(
                      color: Color(0XFF5783C3),
                      fontFamily: "NunitoSans",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          buildPasswordTextField(user.password),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Contact"),
          buildContactTextField(user.contact),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Education Level"),
          buildEducationFormField(),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Specialisation"),
          buildSpecialisationTextField(user.specialisation),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Description"),
          buildDescriptionTextField(user.description),
          SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }

  Padding buildDescriptionTextField(String description) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.165,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          maxLines: 5,
          textAlign: TextAlign.justify,
          decoration: InputDecoration(
            hintText: description,
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
            contentPadding: EdgeInsets.only(top: 20, left: 20, right: 20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          controller: descriptionController,
        ),
      ),
    );
  }

  Padding buildSpecialisationTextField(String specialisation) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: specialisation,
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
          controller: specialisationController,
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
          color: Colors.white.withOpacity(0.5),
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

  Padding buildContactTextField(String contact) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: contact,
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
          controller: contactController,
        ),
      ),
    );
  }

  Padding buildPasswordTextField(String password) {
    String passwordObscured = "";

    List.generate(password.length, (index) {
      passwordObscured += "•";
    });

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.055,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: obscure ? passwordObscured : password,
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
              controller: passwordController,
            ),
          ),
          Positioned(
            right: 15,
            top: 10,
            child: GestureDetector(
              onTap: () =>
                  setState(() {
                    obscure = !obscure;
                  }),
              child: Icon(
                obscure ? Icons.visibility : Icons.visibility_off,
                color: Colors.black.withOpacity(.25),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding buildEmailTextField(String email) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: email,
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
          controller: emailController,
        ),
      ),
    );
  }

  Padding buildNameTextField(String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: name,
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
          controller: nameController,
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


