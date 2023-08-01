import 'package:flutter/cupertino.dart';

class PasswordProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  bool _isObscure = true;

  bool get isObscure => _isObscure;

  isToggleObscure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }
}
