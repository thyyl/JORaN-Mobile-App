import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:joran_app/Models/HomeModel.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class Liquid extends StatelessWidget {
  const Liquid({
    Key? key,
    required AnimationController animationController,
    required bool isFlipped,
  }) : animationController = animationController, isFlipped = isFlipped, super(key: key);

  final AnimationController animationController;
  final bool isFlipped;

  @override
  Widget build(BuildContext context) {
    final double height = 150;
    final model = Provider.of<HomeModel>(context);

    return WillPopScope(
      onWillPop: () async {
        model.closeLiquidMenu(animationController);
        return true;
      },
      child: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 2000),
          curve: Curves.elasticOut,
          transform: Matrix4.identity()
            ..translate(0.0, isFlipped ? -model.openValue - 60 : model.openValue + 60),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform(
                transform: Matrix4.identity()
                  ..scale(1.0, isFlipped ? -1.0 : 1.0)
                  ..translate(0.0, isFlipped ? -height * 2 + 50 : -height + 50),
                child: Lottie.asset(
                    "assets/flare/liquid.json",
                    animate: false,
                    controller: animationController,
                    height: height,
                    delegates: LottieDelegates(
                        values: [
                          ValueDelegate.color(
                              const ["**", "Rectangle 1", "Fill 1"],
                              value: Color(0xffF2F2F2)
                          ),
                          ValueDelegate.color(
                              const ["**", "Shape 1", "Fill 1"],
                              value: Color(0xffF2F2F2)
                          ),
                        ]
                    )
                ),
              ),
              isFlipped
                  ? Container(
                    width: 250,
                    height: 150,
                    child: model.isOpening
                        ? buildOpened(
                          "Basic",
                          "Free of Charge",
                          "Cannot Offer Service",
                          context,
                          model,
                        )
                        : SizedBox(),
                  )
                  : Container(
                    width: 250,
                    height: 150,
                    child: model.isOpening
                        ? buildOpened(
                          "Premium",
                          "RM 49 per year",
                          "Unlimited Service Offer",
                          context,
                          model,
                        )
                        : buildLowerUnopened(model),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildOpened(String plan, String charge, String service, BuildContext context, HomeModel model) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$plan Plan",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontSize: 22.5,
                    fontWeight: FontWeight.w800
                ),
              ),
              GestureDetector(
                onTap: () {
                  model.closeLiquidMenu(animationController);
                  Navigator.of(context).popUntil(ModalRoute.withName('/home'));
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
            ],
          ),
          Text(
            charge,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.w700
            ),
          ),
          Text(
            "Job Finder",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.w700
            ),
          ),
          Text(
            service,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      )
    );
  }

  Column buildLowerUnopened(HomeModel model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Click to explore more!",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontFamily: "NunitoSans"
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            model.openLiquidMenu(animationController);
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.lock,
              color: Colors.pinkAccent,
            ),
          ),
        ),
      ],
    );
  }
}


