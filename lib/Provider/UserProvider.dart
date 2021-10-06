import 'package:flutter/cupertino.dart';
import 'package:joran_app/Models/UserModel.dart';

class UserProvider extends ChangeNotifier{
  late User _user;

  User get user => _user;

  void setUser (User user){
    _user = user;
    notifyListeners();
  }

  void setUpdate(int category, String update) {
    switch (category) {
      case 0:
        _user.name = update;
        break;
      case 1:
        _user.email = update;
        break;
      case 2:
        _user.password = update;
        break;
      case 3:
        _user.contact = update;
        break;
      case 4:
        _user.educationLevel = update;
        break;
      case 5:
        _user.specialisation = update;
        break;
      case 6:
        _user.description = update;
        break;
      case 7:
        _user.userProfilePicture = update;
    }

    notifyListeners();
  }
}