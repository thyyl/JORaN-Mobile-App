import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/Provider/MarketServiceProvider.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceListScreen/ServiceListScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {

  final _serviceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return buildServiceNameTextField();
  }

  Padding buildServiceNameTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.825,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          onEditingComplete: () {
            FocusScope.of(context).unfocus();

            Provider
                .of<MarketServiceProvider>(context, listen: false)
                .setServiceList(fakeServiceDataList);

            Navigator.push(context, PageTransition(
                type: PageTransitionType.fade,
                child: ServiceListScreen())
            );
          },
          decoration: InputDecoration(
            hintText: "Please enter a service",
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
          controller: _serviceController,
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
