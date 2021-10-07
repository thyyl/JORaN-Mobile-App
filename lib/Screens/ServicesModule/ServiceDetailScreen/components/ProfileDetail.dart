import 'package:flutter/material.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Models/UserModel.dart';

class ProfileDetail extends StatelessWidget {
  final User serviceProvider;
  final Service service;

  const ProfileDetail({
    Key? key,
    required this.serviceProvider,
    required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * 0.225,
          width: size.width * 0.4,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage(serviceProvider.userProfilePicture),
                fit: BoxFit.cover,
              )
          ),
          // TODO FADE IN IMAGE FOR USER PROFILE
          // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  serviceProvider.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: "NunitoSans",
                    fontSize: 20,
                  ),
                ),
                Text(
                  "${serviceProvider.educationLevel} in ${serviceProvider.specialisation}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: "NunitoSans",
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  serviceProvider.contact,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 15,
                  ),
                ),
                Text(
                  service.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 15,
                  ),
                ),
                Text(
                  "RM ${service.price} / service",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}