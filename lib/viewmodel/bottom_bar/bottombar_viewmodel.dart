import 'package:alumni_app/views/chat/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../views/alumni/alumni.dart';
import '../../views/event/event.dart';
import '../../views/home/home_view.dart';
import '../../views/profile/profile_view.dart';

class BottomBarViewModel extends BaseViewModel {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    selectedIndex = index;
    rebuildUi();
  }

  List<Widget> widgetOptions = <Widget>[
    const HomeView(),
    const EventView(),
    const AlumniView(),
    const ChatView(),
    const ProfileView(),
  ];
}
