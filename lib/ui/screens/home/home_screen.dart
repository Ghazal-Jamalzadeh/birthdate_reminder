import 'package:birthdate_reminder/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RefColor.pastelPink,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color: RefColor.darkYellow, height: 50,),
        );
      },),
    ) ;
  }
}
