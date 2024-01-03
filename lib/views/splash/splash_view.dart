import 'dart:async';

import 'package:flutter/material.dart';

import '../bottom_bar/bottombar_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 1000), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const BottomBarView()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/images/ellipse.png", width: double.infinity),
          const SizedBox(
            height: 150,
          ),
          const Text(
            "AlumCricles",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
          ),
          const Text(
            "Uniting alumni, empowering connections.",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
          ),
        ],
      )),
    );
  }
}
