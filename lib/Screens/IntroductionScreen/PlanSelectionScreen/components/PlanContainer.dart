import 'package:flutter/material.dart';
import 'package:joran_app/Screens/IntroductionScreen/PlanSelectionScreen/components/PlanContent.dart';

class PlanContainer extends StatefulWidget {
  @override
  _PlanContainerState createState() => _PlanContainerState();
}

class _PlanContainerState extends State<PlanContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.55,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).popUntil(ModalRoute.withName('/home')),
              child: AnimatedContainer(
                height: size.height * 0.25,
                width: size.width * 0.8,
                curve: Curves.fastOutSlowIn,
                duration: const Duration(seconds: 2),
                decoration: BoxDecoration(
                  color: Color(0XFFEDF1F4),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: PlanContent(
                  plan: "Basic",
                  charges: "Free of Charge",
                  serviceOffer: "No Service Offer",
                ),
              ),
            ),
            SizedBox(height: size.height * 0.025),
            GestureDetector(
              child: AnimatedContainer(
                height: size.height * 0.25,
                width: size.width * 0.8,
                curve: Curves.fastOutSlowIn,
                duration: const Duration(seconds: 2),
                decoration: BoxDecoration(
                  color: Color(0XFFEDF1F4),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: PlanContent(
                  plan: "Premium",
                  charges: "RM 49 per year",
                  serviceOffer: "Service Offer",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


