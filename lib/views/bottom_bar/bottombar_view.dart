import 'package:alumni_app/utils/text_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../viewmodel/bottom_bar/bottombar_viewmodel.dart';

class BottomBarView extends StatelessWidget {
  const BottomBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BottomBarViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: viewModel.widgetOptions.elementAt(viewModel.selectedIndex),
            bottomNavigationBar: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 80,
              color: Color(0xffffffff),
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                child: BottomNavigationBar(
                  currentIndex: viewModel.selectedIndex,
                  selectedItemColor: Color(0xff804EEB),
                  unselectedItemColor: Color(0xff0C0C0C),
                  selectedFontSize: 16,
                  iconSize: 30,
                  selectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.w700, letterSpacing: 1),
                  onTap: viewModel.onItemTapped,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      backgroundColor: Color(0xffffffff),
                      icon: const Icon(
                        CupertinoIcons.home,
                      ),
                      label: AppText.home,
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Color(0xffffffff),
                      icon: const Icon(Icons.event_note_outlined),
                      label: AppText.event,
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Color(0xffffffff),
                      icon: const Icon(
                        Icons.people_outlined,
                      ),
                      label: AppText.alumni,
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Color(0xffffffff),
                      icon: const Icon(
                        CupertinoIcons.chat_bubble_text,
                      ),
                      label: AppText.chat,
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Color(0xffffffff),
                      icon: const Icon(
                        CupertinoIcons.profile_circled,
                      ),
                      label: AppText.profile,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
