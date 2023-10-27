import 'package:birthdate_reminder/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/cards/birthdate-cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)),

        onPressed: () {
          // Add your action here
        },
        child: Icon( CupertinoIcons.plus, size: 32, color: Colors.white,),
        tooltip: 'Add',
        backgroundColor: SysColor.error,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      backgroundColor: RefColor.pastelPink,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: BirthdateCard(),
        );
      },),
    ) ;
  }
}
