import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Screens/ChatModule/ChatRateUserScreen/components/FlareController.dart';
import 'package:joran_app/Screens/ChatModule/ChatRateUserScreen/components/RateButton.dart';
import 'package:joran_app/Screens/ChatModule/ChatRateUserScreen/components/SliderPainter.dart';
import 'package:joran_app/Screens/ChatModule/ChatRateUserScreen/components/TopLevelBar.dart';
import 'package:lottie/lottie.dart';

class ChatRateUserScreen extends StatefulWidget {
  @override
  _ChatRateUserScreenState createState() => _ChatRateUserScreenState();
}

class _ChatRateUserScreenState extends State<ChatRateUserScreen> {
  FlareRateController _flareRateController = FlareRateController();
  double sliderWidth = 380;
  double _dragPercent = 0.0;
  ValueNotifier<String> service = ValueNotifier("Mediocre");
  ValueNotifier<Color> background = ValueNotifier(Color(0XFFFCBDE9));

  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode();
  }

  void updateDragPosition(Offset offset) {
    setState(() {
      _dragPercent = (offset.dx / sliderWidth).clamp(0.0, 1.0);
    });

    if (_dragPercent >= 0.8)
      setState(() {
        service.value = "Wonderful";
        background.value = Color(0XFFBCFBE4);
      });
    else if (_dragPercent >= 0.4 && _dragPercent < 0.8)
      setState(() {
        service.value = "OK";
        background.value = Color(0XFFF8ECBD);
      });
    else if (_dragPercent < 0.4)
      setState(() {
        service.value = "Mediocre";
        background.value = Color(0XFFFCBDE9);
      });
  }

  void _onDragStart(BuildContext context, DragStartDetails details) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    Offset localOffset = renderBox.localToGlobal(details.globalPosition);

    updateDragPosition(localOffset);
  }
  void _onDragUpdate(BuildContext context, DragUpdateDetails details) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    Offset localOffset = renderBox.localToGlobal(details.globalPosition);

    updateDragPosition(localOffset);
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ValueListenableBuilder(
      valueListenable: service,
      builder: (BuildContext context, String value, Widget? child) {
        return ValueListenableBuilder(
          valueListenable: background,
          builder: (BuildContext context, Color value, Widget? child) {
            return AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Scaffold(
                appBar: AppBar(
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: background.value,
                    statusBarIconBrightness: Brightness.dark
                  ),
                  toolbarHeight: 0,
                  toolbarOpacity: 0,
                  backgroundColor: background.value,
                  elevation: 0,
                ),
                backgroundColor: background.value,
                resizeToAvoidBottomInset: false,
                body: Column(
                  children: [
                    TopLevelBar(),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      service.value,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "NunitoSans",
                          fontSize: 27.5
                      ),
                    ),
                    Container(
                      height: size.height * 0.375,
                      width: 340,
                      // child: FlareActor(
                      //   "assets/flare/rate.flr",
                      //   artboard: "Artboard",
                      //   // controller: _flareRateController,
                      // ),

                      child: Lottie.asset(
                        "assets/flare/${service.value.toLowerCase()}.json",
                      ),
                    ),
                    buildSlider(size),
                    SizedBox(height: size.height * 0.025),
                    RateButton(function: () {}),
                  ],
                ),
              ),
            );
          },
        );
      },

    );
  }

  buildFlareActor(Size size) => Container(
    height: size.height * 0.4,
    width: 380,
    child: FlareActor(
      "assets/flare/rate.flr",
      artboard: "Artboard",
    ),
  );

  buildSlider(Size size) => GestureDetector(
    onHorizontalDragStart: (DragStartDetails details) => _onDragStart(context, details),
    onHorizontalDragUpdate: (DragUpdateDetails details) => _onDragUpdate(context, details),
    child: Container(
      width: size.width * 0.8,
      height: size.height * 0.1,
      child: CustomPaint(
        painter: SliderPainter(progress: _dragPercent),
      ),
    ),
  );
}

