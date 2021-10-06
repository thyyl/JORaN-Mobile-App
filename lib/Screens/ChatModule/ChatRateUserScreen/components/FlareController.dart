import 'dart:math' as math;
import 'package:flare_flutter/base/animation/actor_animation.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';

class FlareRateController extends FlareController {
  late ActorAnimation _rateAnimation;

  double _slidePercent = 0.0;
  double _currentSlide = 0.0;
  double _smoothTime = 5.0;

  void updatePercentage(double value) {
    _slidePercent = value;
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    _rateAnimation = artboard.getAnimation("Slide")!;
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    print(_rateAnimation);
    _currentSlide += (_slidePercent - _currentSlide) * math.min(1, elapsed * _smoothTime);
    // _rateAnimation.apply(_currentSlide * _rateAnimation.duration, artboard, 1);

    return true;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {

  }
}