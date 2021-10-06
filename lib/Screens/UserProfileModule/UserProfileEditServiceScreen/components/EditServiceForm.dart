import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Provider/ServiceProvider.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesAddServiceScreen/components/TextFieldLabel.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditServiceScreen/components/PostButton.dart';
import 'package:joran_app/constants.dart';
import 'package:provider/provider.dart';

class EditServiceForm extends StatefulWidget {
  const EditServiceForm({
    Key? key,
    required this.service,
    required this.category
  }) : super(key: key);

  @override
  _EditServiceFormState createState() => _EditServiceFormState(category);

  final Service service;
  final String category;
}

class _EditServiceFormState extends State<EditServiceForm> {

  _EditServiceFormState(this.cat) {
    this.categorySelection = this.cat;
  }

  final _nameController = TextEditingController();
  final _priceController = TextEditingController();

  late String categorySelection;
  final cat;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
            function: () => validateForm(context)
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
            hintText: "RM ${widget.service.price}",
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
            hintText: widget.service.title,
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

  void validateForm(BuildContext context) {
    bool nothingToUpdate = true;

    if (_nameController.text.isNotEmpty) {
      if (_nameController.text != widget.service.title) {
        setState(() {
          Provider.of<ServiceProvider>(context, listen: false)
              .setUpdateService(widget.service.serviceID, _nameController.text, 1);
        });

        nothingToUpdate = false;
        showNotification("Successfully updated.", context);
        // TODO UPDATE DATABASE
      }
    }

    if (categorySelection != widget.service.category) {
      setState(() {
        Provider.of<ServiceProvider>(context, listen: false)
            .setUpdateService(widget.service.serviceID, categorySelection, 2);
      });

      nothingToUpdate = false;
      showNotification("Successfully updated.", context);
      // TODO UPDATE DATABASE
    }

    if (_priceController.text.isNotEmpty) {
      if (_priceController.text != widget.service.price) {
        setState(() {
          Provider.of<ServiceProvider>(context, listen: false)
              .setUpdateService(widget.service.serviceID, _priceController.text, 3);
        });

        nothingToUpdate = false;
        showNotification("Successfully updated.", context);
        // TODO UPDATE DATABASE
      }
    }

    if (nothingToUpdate)
      showNotification("There is nothing to update.", context);
  }

  ToastFuture showNotification(String content, BuildContext context) {
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
