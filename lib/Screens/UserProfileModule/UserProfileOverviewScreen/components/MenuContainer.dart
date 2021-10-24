import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/ServiceProvider.dart';
import 'package:joran_app/Provider/SkillsProvider.dart';
import 'package:joran_app/Provider/StringProvider.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/UserProfileEditSkillsScreen.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/MenuContainerIndividual.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/UserProfileServiceScreen.dart';
import 'package:joran_app/Services/Query.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class MenuContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    User user = Provider.of<UserProvider>(context).user;

    return Container(
      height: size.height * 0.465,
      width: size.width * 0.85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MenuIndividualContainer(
                color: Color(0XFFE2C57A),
                title: user.educationLevel,
                description: "${user.educationLevel} in ${user.specialisation}",
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<ServiceProvider>(context, listen: false).setServiceList(fakeServiceDataList);

                  Navigator.push(context, PageTransition(
                    type: PageTransitionType.fade,
                    child: UserProfileServiceScreen())
                  );
                },
                child: MenuIndividualContainer(
                  color: Colors.white,
                  title: "Your Services",
                  description: "Update Your Services",
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: pdfPicker,
                child: MenuIndividualContainer(
                  color: Colors.white,
                  title: "Your Résumé",
                  description: "Upload Your Résumé (PDF)",
                ),
              ),
              SizedBox(height: size.height * 0.035),
              GestureDetector(
                onTap: () {
                  Provider.of<SkillsProvider>(context, listen: false).setSkillsList(skillData);

                  String jwt = Provider.of<StringProvider>(context, listen: false).jwt;
                  queryLatestJobListing(jwt);

                  // Navigator.push(
                  //     context, MaterialPageRoute(
                  //     builder: (context) => UserProfileEditSkillsScreen())
                  // );
                },
                child: Container(
                  width: size.width * 0.375,
                  height: size.height * 0.125,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Center(
                    child: Text(
                      "Your Skills",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.5,
                        fontFamily: "NunitoSans",
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Future<void> pdfPicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ['pdf'],

    );

  //   if (result != null) {
  //     Uint8List? fileBytes = result.files.first.bytes;
  //     String fileName = result.files.first.name;
  //     print(fileName);
  //     await FirebaseStorage.instance.ref('uploads/$fileName').putData(fileBytes);
  //   } else {
  //     User canceled the picker
  //   }
  }
}