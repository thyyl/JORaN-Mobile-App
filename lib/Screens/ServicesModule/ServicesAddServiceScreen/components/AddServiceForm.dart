import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/ServiceProvider.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesAddServiceScreen/components/PostButton.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesAddServiceScreen/components/TextFieldLabel.dart';
import 'package:joran_app/constants.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class AddServiceForm extends StatefulWidget {
  @override
  _AddServiceFormState createState() => _AddServiceFormState();
}

class _AddServiceFormState extends State<AddServiceForm> {

  final _nameController = TextEditingController();
  final _priceController = TextEditingController();

  String categorySelection = "Accounting";

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).user;
    Size size = MediaQuery.of(context).size;

    void addNewService() {
      if (_nameController.text.isNotEmpty && _priceController.text.isNotEmpty) {

        var uuid = Uuid();

        Service service = Service(
            serviceID: uuid.v1(),
            title: _nameController.text,
            category: categorySelection,
            price: _priceController.text,
            userID: user.userID,
        );

        Provider.of<ServiceProvider>(context, listen: false).addNewService(service);

        showNotification("Successfully added.");
        //TODO UPDATE TO DATABASE
      } else {
        showNotification("There is nothing to add.");
      }
    }

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldLabel(text: "Title"),
          buildNameTextField(),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Category"),
          buildCategoryFormField(),
          SizedBox(height: size.height * 0.02),

          TextFieldLabel(text: "Price"),
          buildPriceTextField(),
          SizedBox(height: size.height * 0.05),

          PostButton(
            function: addNewService
          )
        ],
      ),
    );
  }

  Padding buildPriceTextField() {
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
            prefixText: "RM ",
            hintText: "Please enter a price",
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
          controller: _priceController,
        ),
      ),
    );
  }

  Padding buildCategoryFormField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            icon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.black.withOpacity(.5),
              ),
            ),
            value: categorySelection,
            onChanged: (dynamic newValue) {
              setState(() {
                categorySelection = newValue;
              });
            },
            items: categoryList.map<DropdownMenuItem<String>>((String value) {
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
            hintText: "Please enter a title",
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
