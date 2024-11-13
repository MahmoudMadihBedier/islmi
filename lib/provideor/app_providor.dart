import 'package:flutter/material.dart';

class AppProvidor extends ChangeNotifier {
  String appLanguage = "en";
  void changeLanguage(String codelanguage) {
    appLanguage = codelanguage;
    notifyListeners();
  }
}
