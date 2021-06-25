import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itqan_school/view/screens/homeScreen.dart';
import 'package:itqan_school/view/screens/librarySreen.dart';
import 'package:itqan_school/view/screens/monthlyPlane.dart';
import 'package:itqan_school/view/screens/programsScreen.dart';
import 'package:itqan_school/view/screens/profileScreen.dart';

class AppViewModel extends GetxController {
  int _navigatorIndex = 0;
  Widget _currentScreen = HomeScreen();

  get currentScreen => _currentScreen;
  get navigatorIndex => _navigatorIndex;
  void changeSelectedValue(int selectedValue) {
    _navigatorIndex = selectedValue;
    switch (selectedValue) {
      case 0:
        _currentScreen = HomeScreen();
        break;
      case 1:
        _currentScreen = ProgramsScreen();
        break;
      case 2:
        _currentScreen = LibraryScreen();
        break;
      case 3:
        _currentScreen = MonthlyPlanScreen();
        break;
      case 4:
        _currentScreen = ProfileScreen();
        break;
    }
    update();
  }
}
