import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store_ui/screens/auth/auth_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const Image(
        image: AssetImage('assets/images/logo.png'),
        width: 96.67,
      ),
      duration: 2500,
      backgroundColor: Colors.black,
      nextScreen: const AuthScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
