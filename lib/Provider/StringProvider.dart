import 'package:flutter/cupertino.dart';

class StringProvider extends ChangeNotifier {
  late String _email;
  late String _password;
  late String _jwt;

  String get email => _email;
  String get password => _password;
  String get jwt => _jwt;

  void setCredentials (String email, String password) {
    _email = email;
    _password = password;
    notifyListeners();
  }

  void setJWT (String jwt) {
    _jwt = jwt;
    notifyListeners();
  }
}