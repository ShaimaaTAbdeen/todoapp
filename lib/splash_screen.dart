import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todoapp/onboarding/onboarding_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),()
    {
      Navigator.of(context).push(
        MaterialPageRoute(builder:(context)
        {
          return Onboarding1();
        }


        )
      );

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffD9D9D9),
      backgroundColor: Color(0xff1D1D1D),
      body: Center(
        child: Image.asset('assets/images/uptodologo.png',
        width: 130,
        height: 180,
        alignment: Alignment.center,),
      ),
    );
  }
}