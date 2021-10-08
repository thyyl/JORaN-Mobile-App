import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/Provider/MarketServiceProvider.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceListScreen/ServiceListScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class CategoriesIndividual extends StatelessWidget {
  const CategoriesIndividual({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: () {
          Provider
              .of<MarketServiceProvider>(context, listen: false)
              .setServiceList(
                fakeServiceDataList.where((element) => element.category == category).toList()
          );

          Navigator.push(context, PageTransition(
              type: PageTransitionType.fade,
              child: ServiceListScreen())
          );
        },
        child: Container(
          height: size.height * 0.075,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0XFFEDF1F4).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image(
                            image: AssetImage("assets/pictures/${category.toLowerCase()}.png")
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Text(
                      category,
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontWeight: FontWeight.w700,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0XFFEDF1F4).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Icon(
                        Icons.arrow_forward_ios_rounded
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}