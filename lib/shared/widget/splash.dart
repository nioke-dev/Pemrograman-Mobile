import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: const Color.fromARGB(255, 245, 241, 241),
      duration: const Duration(milliseconds: 5515),
      onEnd: () {
        context.go('/home');
      },
      childWidget: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/LinkAja.svg.png",
                width: 60,
              ),
              Image.asset(
                "assets/images/logoSyariah.png",
                width: 75,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Image.asset(
            "assets/images/tagline.png",
            width: 300,
          ),
          const SizedBox(
            height: 35,
          ),
          Image.asset(
            "assets/images/person.png",
            fit: BoxFit.fill,
          ),
          const Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text("Versi 4.37.1")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
