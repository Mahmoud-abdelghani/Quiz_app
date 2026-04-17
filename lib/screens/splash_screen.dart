import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => HomeScreen()),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      centered: true,
      backgroundColor: Colors.black,
      splashIconSize: 300,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 250,
            height: 250,
            fit: BoxFit.cover,
          ),
          CircularProgressIndicator(),
        ],
      ),
      nextScreen: HomeScreen(),
    );
    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   body: Center(
    // child: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Image.asset(
    //       'assets/logo.png',
    //       width: 250,
    //       height: 250,
    //       fit: BoxFit.cover,
    //     ),
    //     CircularProgressIndicator(),
    //   ],
    // ),
    //   ),
    // );
  }
}
