import 'package:alumni_app/views/splash/splash_view.dart';
import 'package:flutter/material.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/ellipse3.png", width: double.infinity),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "AlumCricles",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
            ),
            const Text(
              "Uniting alumni, empowering connections.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
            Image.asset("assets/images/logo.png", width: double.infinity),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SplashView()));
              },
              child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color(0xff804EEB),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Next"))),
            )
          ],
        ),
      )),
    );
  }
}
