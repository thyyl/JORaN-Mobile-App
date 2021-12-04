import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/Provider/ServiceProvider.dart';
import 'package:joran_app/Provider/SkillsProvider.dart';
import 'package:joran_app/Provider/StringProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/UserProfileEditSkillsScreen.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/MenuContainerIndividual.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/UserProfileServiceScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class MenuContainer extends StatelessWidget {
  final Map<String, dynamic> userInfo;

  const MenuContainer({
    Key? key,
    required this.userInfo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String jwt = Provider.of<StringProvider>(context).jwt;
    String userID = Provider.of<StringProvider>(context).id;

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
                title: userInfo['details']['education_level'],
                description: "testing",
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
                onTap: () {
                  pdfPicker(jwt, userID);
                },
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

                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => UserProfileEditSkillsScreen())
                  );
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

  Future<void> pdfPicker(String jwt, String userID) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ['pdf'],

    );

    // if (result != null) {
    //   http.Response response = await uploadUserResume(jwt, userID, result);
    //   print(response.statusCode);
    // } else {
    //
    // }
  }
}