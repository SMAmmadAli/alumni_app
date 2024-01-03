import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../views/bottom_bar/bottombar_view.dart';

class SplashViewModel extends BaseViewModel {
  void moveToNextPage(context) async {
    Timer(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomBarView()));
    });
  }
}
