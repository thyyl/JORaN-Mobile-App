import 'package:flutter/cupertino.dart';
import 'package:joran_app/Models/UserRatingsModel.dart';

class UserRatingsProvider extends ChangeNotifier {
  late UserRatings _userRatings;

  UserRatings get userRatings => _userRatings;

  void setUserRatings(UserRatings userRatings) {
    _userRatings = userRatings;
    notifyListeners();
  }
}