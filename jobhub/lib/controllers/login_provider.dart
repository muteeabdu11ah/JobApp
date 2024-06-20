import 'package:flutter/material.dart';


class LoginNotifier extends ChangeNotifier {
  bool _obscureText = true;
 bool get obscuretext => _obscureText;

  set obscuretext(bool newstate)
{
  _obscureText = newstate;
  notifyListeners();
}
}
