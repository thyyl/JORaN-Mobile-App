import 'package:flutter/cupertino.dart';

class StringProvider extends ChangeNotifier {
  late String _email;
  late String _password;

  String get email => _email;
  String get password => _password;

  void setCredentials (String email, String password) {
    _email = email;
    _password = password;
    notifyListeners();
  }
}