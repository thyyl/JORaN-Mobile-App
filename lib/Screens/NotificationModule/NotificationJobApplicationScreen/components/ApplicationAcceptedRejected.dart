import 'package:flutter/material.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/StatusContainer.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobOfferScreen/NotificationJobOfferScreen.dart';
import 'package:page_transition/page_transition.dart';

class ApplicationAcceptedRejected extends StatelessWidget {

  const ApplicationAcceptedRejected({
    Key? key,
    required this.status,
    required this.date
  }) : super(key: key);


  final String status;
  final String date;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
      child: Container(
        height: size.height * 0.175,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatusContainer(
              status: status,
              date: date
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    status == "Accepted"
                        ? "You have received an offer." : "You have been rejected.",
                    style: TextStyle(
                      color: Color(0XFF76787A),
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      fontFamily: "NunitoSans"
                    ),
                  ),
                  status == "Accepted"
                  ? GestureDetector(
                    onTap: () => Navigator.push(context, PageTransition(
                        type: PageTransitionType.fade, child: NotificationJobOfferScreen())
                    ),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded
                        )
                      ),
                    ),
                  )
                  : Container(
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}