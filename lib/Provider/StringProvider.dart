import 'package:flutter/cupertino.dart';

class StringProvider extends ChangeNotifier {
  late String _email;
  late String _password;
  late String _jwt;
  late String _id;

  String get email => _email;
  String get password => _password;
  String get jwt => _jwt;
  String get id => _id;

  void setCredentials (String email, String password) {
    _email = email;
    _password = password;
    notifyListeners();
  }

  void setJWT (String jwt) {
    _jwt = jwt;
    notifyListeners();
  }

  void setID(int id) {
    _id = id.toString();
    notifyListeners();
  }
}