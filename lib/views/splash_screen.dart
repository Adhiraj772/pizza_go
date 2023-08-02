import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pizza_go/views/Login.dart';
import 'package:pizza_go/views/home_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), ()=>Navigator.pushReplacement(context,PageTransition(child:Login(), type:PageTransitionType.leftToRightWithFade )));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200.0,
              width: 400.0,
              child: Lottie.asset('animations/slice.json'),
            ),
            RichText(text: TextSpan(text: 'Piz',style: TextStyle(
              fontSize: 56.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,


            ),
              children: <TextSpan>[
                TextSpan(
                  text: 'a',
                  style: TextStyle(
                    fontSize: 56.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,

                  )
                ),
                TextSpan(
                    text: 'go',
                    style: TextStyle(
                      fontSize: 56.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    )
                )
              ]
            ),)

          ],
        ),
      ),
    );
  }
}
