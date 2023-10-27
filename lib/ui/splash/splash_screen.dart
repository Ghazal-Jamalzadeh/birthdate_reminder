import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RefColor.darkBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 32,) ,
          const Text('یادآور تاریخ تولد' , style: TextStyle(fontSize: 16)) ,
          const SizedBox(height: 32,) ,
          Expanded(child: Lottie.asset('assets/lottie-animations/animation_4.json' )),
        ],
      ),
    );
  }
}
