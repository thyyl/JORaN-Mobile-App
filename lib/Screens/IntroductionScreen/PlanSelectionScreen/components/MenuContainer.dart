import 'package:flutter/material.dart';
import 'package:joran_app/Screens/IntroductionScreen/PlanSelectionScreen/components/Liquid.dart';

class MenuContainer extends StatefulWidget {
  @override
  _MenuContainerState createState() => _MenuContainerState();
}

class _MenuContainerState extends State<MenuContainer> with TickerProviderStateMixin{
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1000)
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Container(
        child: Stack(
          children: [
            Liquid(
              isFlipped: true,
              animationController: _animationController,
            ),
            Liquid(
              isFlipped: false,
              animationController: _animationController,
            ),
          ],
        ),
      ),
    );
  }
}
