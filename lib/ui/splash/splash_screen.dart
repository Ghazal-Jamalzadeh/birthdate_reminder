import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RefColor.darkBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer() ,
          Text('یادآور تاریخ تولد' , style: TextStyle(fontSize: 16)) ,
          Spacer() ,
          Lottie.asset('assets/lottie-animations/animation_4.json'),
        ],
      ),
    );
  }
}
