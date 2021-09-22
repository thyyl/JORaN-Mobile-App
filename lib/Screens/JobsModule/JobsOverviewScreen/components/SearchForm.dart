import 'package:flutter/material.dart';
import 'package:joran_app/Screens/JobsModule/JobsListScreen/JobsListScreen.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/SearchButton.dart';
import 'package:page_transition/page_transition.dart';

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {

  final _jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Search a Job",
            style: TextStyle(
              color: Color(0XFF76787A),
              fontSize: 20,
              fontFamily: "NunitoSans",
              fontWeight: FontWeight.w600
            ),
          ),
          buildNameTextField(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 200),
            child: SearchButton(
              function: () {
                Navigator.push(context, PageTransition(
                    type: PageTransitionType.fade, child: JobsListScreen())
                );
              }
            ),
          ),
        ],
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
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Please enter a job",
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
          controller: _jobController,
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
